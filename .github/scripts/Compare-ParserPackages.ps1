param(
    [Parameter(Mandatory = $true)][string]$Flavor,
    [Parameter(Mandatory = $true)][string]$OutputName,
    [string]$Config = ''
)

$ErrorActionPreference = 'Stop'
$evidence = Join-Path $env:RUNNER_TEMP "parser-comparison-$Flavor"
New-Item -ItemType Directory -Path $evidence -Force | Out-Null
$result = [ordered]@{
    flavor = $Flavor
    commit = $env:GITHUB_SHA
    baselinePackages = @{ Csv = '[2.0.245]'; KeraLua = '[1.4.11]'; NLua = '[1.7.9]' }
    candidatePackages = @{}
    startedUtc = [DateTime]::UtcNow.ToString('o')
    timeZone = [TimeZoneInfo]::Local.Id
    runs = @{}
    passed = $false
    error = $null
}

function Copy-Tree([string]$Source, [string]$Destination) {
    New-Item -ItemType Directory -Path $Destination -Force | Out-Null
    & robocopy $Source $Destination /E /R:1 /W:1 /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -gt 7) { throw "Copy failed ($LASTEXITCODE): $Source" }
}

function Get-Manifest([string]$Directory) {
    $prefix = [IO.Path]::GetFullPath($Directory).TrimEnd('\')
    @(Get-ChildItem -LiteralPath $prefix -File -Recurse -Force | Sort-Object FullName | ForEach-Object {
        '{0}  {1}' -f (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant(), $_.FullName.Substring($prefix.Length + 1).Replace('\', '/')
    })
}

function Write-Manifest([string]$Path, [string[]]$Lines) {
    [IO.File]::WriteAllLines($Path, $Lines, (New-Object System.Text.UTF8Encoding $false))
}

function Invoke-Parser([string]$Label, [string]$RunRoot) {
    $tools = Join-Path $RunRoot '.contrib/.tools'
    $stdout = Join-Path $evidence "$Label.stdout.log"
    $stderr = Join-Path $evidence "$Label.stderr.log"
    $arguments = 'auto baseconfig="../.db/standard/.config/retail/retail.config"'
    if ($Config) { $arguments += ' config="' + $Config + '"' }
    $run = [ordered]@{ startedUtc = [DateTime]::UtcNow.ToString('o'); arguments = $arguments; exitCode = $null; timedOut = $false; errors = @() }
    $process = Start-Process -FilePath (Join-Path $tools 'Parser.exe') -ArgumentList $arguments -WorkingDirectory $tools -RedirectStandardOutput $stdout -RedirectStandardError $stderr -PassThru -WindowStyle Hidden
    # Retain the process handle before waiting so Windows PowerShell can read its exit code.
    $processHandle = $process.Handle
    if (-not $process.WaitForExit(420000)) {
        $run.timedOut = $true
        $process.Kill()
        $process.WaitForExit()
        $run.errors += 'Timed out after 420 seconds'
    }
    $process.WaitForExit()
    $run.exitCode = $process.ExitCode
    $run.finishedUtc = [DateTime]::UtcNow.ToString('o')
    if ($null -eq $run.exitCode) { $run.errors += 'Exit code unavailable' }
    elseif ($run.exitCode -ne 0) { $run.errors += "Exit code: $($run.exitCode)" }
    if ((Get-Item -LiteralPath $stderr).Length -ne 0) { $run.errors += 'Standard error is not empty' }
    $log = [IO.File]::ReadAllText($stdout)
    if ($log -notmatch '(?m)^\d+ ExportAddonData\.\.\.\r?$') { $run.errors += 'Missing ExportAddonData completion marker' }
    if ($log -notmatch '(?m)^\d+ FinalLogging\.\.\.\r?$') { $run.errors += 'Missing FinalLogging completion marker' }
    if ($log -match '(?m)^(ERROR:|==== EXCEPTION ====|-- (Errors encountered|Exception encountered))') { $run.errors += 'Parser logged an error' }
    $exportRoot = Join-Path $RunRoot 'db'
    $output = Join-Path $exportRoot $OutputName
    $manifest = @()
    $run.outputFiles = 0
    $run.outputBytes = 0
    if (Test-Path -LiteralPath $exportRoot -PathType Container) {
        $manifest = @(Get-Manifest $exportRoot)
        $exportFiles = @(Get-ChildItem -LiteralPath $exportRoot -File -Recurse -Force)
        $run.outputFiles = $exportFiles.Count
        $run.outputBytes = [long](($exportFiles | Measure-Object -Property Length -Sum).Sum)
        Copy-Tree $exportRoot (Join-Path $evidence "$Label-exports")
    }
    if (-not (Test-Path -LiteralPath $output -PathType Container)) {
        $run.errors += "Missing output directory: $OutputName"
    } else {
        foreach ($requiredFile in 'LocalizationDB.lua', 'ReferenceDB.lua', 'Database.xml') {
            if (-not (Test-Path -LiteralPath (Join-Path $output $requiredFile) -PathType Leaf)) { $run.errors += "Missing output file: $requiredFile" }
        }
        if (@(Get-ChildItem -LiteralPath $output -File -Recurse -Force | Where-Object { $_.Length -gt 0 }).Count -eq 0) { $run.errors += 'Output files contain no data' }
    }
    if ($manifest.Count -eq 0) { $run.errors += 'Output file set is empty' }
    Write-Manifest (Join-Path $evidence "$Label.output.sha256") $manifest
    $header = Join-Path $RunRoot '.contrib/.db/shared/constants/headerIDs.lua'
    if (Test-Path -LiteralPath $header -PathType Leaf) { Copy-Item -LiteralPath $header -Destination (Join-Path $evidence "$Label-headerIDs.lua") }
    $afterInput = @(Get-Manifest (Join-Path $RunRoot '.contrib/.db'))
    Write-Manifest (Join-Path $evidence "input.$Label.after.sha256") $afterInput
    $result.runs[$Label] = $run
}

try {
    $sourceDb = Join-Path $env:GITHUB_WORKSPACE '.contrib/.db'
    $project = [xml](Get-Content -LiteralPath (Join-Path $env:GITHUB_WORKSPACE '.contrib/src/Parser/Parser.csproj') -Raw)
    foreach ($name in 'Csv', 'KeraLua', 'NLua') {
        $reference = @($project.Project.ItemGroup.PackageReference | Where-Object { $_.Include -eq $name })
        if ($reference.Count -ne 1) { throw "Expected one Parser package reference: $name" }
        $result.candidatePackages[$name] = $reference[0].Version
    }
    $candidateInfo = Join-Path $env:RUNNER_TEMP 'contributor-tools/build-info.json'
    $baselineInfo = Join-Path $env:RUNNER_TEMP 'baseline-parser/build-info.json'
    $baselineSourceHashes = Join-Path $env:RUNNER_TEMP 'baseline-parser/source.sha256'
    foreach ($file in $candidateInfo, $baselineInfo, $baselineSourceHashes) {
        if (-not (Test-Path -LiteralPath $file -PathType Leaf)) { throw "Missing build evidence: $file" }
    }
    $candidateBuild = Get-Content -LiteralPath $candidateInfo -Raw | ConvertFrom-Json
    $baselineBuild = Get-Content -LiteralPath $baselineInfo -Raw | ConvertFrom-Json
    if ($candidateBuild.commit -ne $env:GITHUB_SHA -or $baselineBuild.commit -ne $env:GITHUB_SHA) { throw 'Build artifacts do not match the checkout commit' }
    if ($baselineBuild.packages.Csv -ne '[2.0.245]' -or $baselineBuild.packages.KeraLua -ne '[1.4.11]' -or $baselineBuild.packages.NLua -ne '[1.7.9]') { throw 'Unexpected baseline package versions' }
    Copy-Item -LiteralPath $candidateInfo -Destination (Join-Path $evidence 'candidate.build-info.json')
    Copy-Item -LiteralPath $baselineInfo -Destination (Join-Path $evidence 'baseline.build-info.json')
    Copy-Item -LiteralPath $baselineSourceHashes -Destination (Join-Path $evidence 'source.sha256')
    $configFiles = @(
        (Join-Path $sourceDb 'shared/.config/root.config'),
        (Join-Path $sourceDb 'standard/.config/retail/retail.config')
    )
    if ($Config) { $configFiles += Join-Path (Join-Path $env:GITHUB_WORKSPACE '.contrib/.tools') $Config }
    $values = @{}
    foreach ($file in $configFiles) {
        $text = Get-Content -LiteralPath $file -Raw
        foreach ($key in 'IgnoreWowheadRetrieval', 'DoConsolidateObjectDB') {
            $matchesFound = [regex]::Matches($text, '"' + $key + '"\s*:\s*(true|false)', 'IgnoreCase')
            foreach ($match in $matchesFound) { $values[$key] = $match.Groups[1].Value.ToLowerInvariant() }
        }
    }
    if ($values['IgnoreWowheadRetrieval'] -ne 'true' -or $values['DoConsolidateObjectDB'] -ne 'false') { throw 'Parser configuration does not preserve offline settings' }
    $result.offlineSettings = $values

    $inputManifest = @(Get-Manifest $sourceDb)
    if ($inputManifest.Count -eq 0) { throw 'Source database is empty' }
    Write-Manifest (Join-Path $evidence 'input.checkout.sha256') $inputManifest
    foreach ($label in 'baseline', 'candidate') {
        $runRoot = Join-Path $env:RUNNER_TEMP "parser-run-$Flavor-$label"
        if (Test-Path -LiteralPath $runRoot) { throw "Run directory already exists: $runRoot" }
        $db = Join-Path $runRoot '.contrib/.db'
        $tools = Join-Path $runRoot '.contrib/.tools'
        Copy-Tree $sourceDb $db
        $package = if ($label -eq 'baseline') { Join-Path $env:RUNNER_TEMP 'baseline-parser/Parser' } else { Join-Path $env:RUNNER_TEMP 'contributor-tools/Parser' }
        Copy-Tree $package $tools
        $copiedManifest = @(Get-Manifest $db)
        Write-Manifest (Join-Path $evidence "input.$label.sha256") $copiedManifest
        if (Compare-Object $inputManifest $copiedManifest) { throw "$label input snapshot differs from checkout" }
    }
    foreach ($label in 'baseline', 'candidate') {
        Invoke-Parser $label (Join-Path $env:RUNNER_TEMP "parser-run-$Flavor-$label")
    }
    if ($result.runs.baseline.errors.Count -or $result.runs.candidate.errors.Count) { throw 'One or both Parser runs failed their checks' }
    $headerHashes = @{}
    foreach ($label in 'baseline', 'candidate') {
        $header = Join-Path $env:RUNNER_TEMP "parser-run-$Flavor-$label/.contrib/.db/shared/constants/headerIDs.lua"
        if (-not (Test-Path -LiteralPath $header -PathType Leaf)) { throw "Missing generated headerIDs.lua: $label" }
        $headerHashes[$label] = (Get-FileHash -LiteralPath $header -Algorithm SHA256).Hash.ToLowerInvariant()
    }
    $result.headerIDs = $headerHashes
    if ($headerHashes.baseline -ne $headerHashes.candidate) { throw 'Generated headerIDs.lua differs' }
    $baselineOutput = @(Get-Content -LiteralPath (Join-Path $evidence 'baseline.output.sha256'))
    $candidateOutput = @(Get-Content -LiteralPath (Join-Path $evidence 'candidate.output.sha256'))
    $differences = @(Compare-Object $baselineOutput $candidateOutput)
    if ($differences.Count -gt 0) {
        $differences | Out-String | Set-Content -LiteralPath (Join-Path $evidence 'output-differences.txt')
        throw "Output manifests differ: $($differences.Count) entries"
    }
    $result.passed = $true
} catch {
    $result.error = $_.Exception.ToString()
} finally {
    $result.finishedUtc = [DateTime]::UtcNow.ToString('o')
    [IO.File]::WriteAllText((Join-Path $evidence 'result.json'), ($result | ConvertTo-Json -Depth 8), (New-Object System.Text.UTF8Encoding $false))
    if ($env:GITHUB_STEP_SUMMARY) {
        $outcome = if ($result.passed) { 'PASS' } else { 'FAIL' }
        "### Parser comparison: $Flavor - $outcome`n`n$($result.error)`n" | Out-File -FilePath $env:GITHUB_STEP_SUMMARY -Append -Encoding utf8
    }
}
if (-not $result.passed) { throw $result.error }
exit 0
