param(
    [Parameter(Mandatory)][string]$Flavor,
    [Parameter(Mandatory)][string]$OutputName,
    [string]$Config = ''
)
$ErrorActionPreference='Stop'
$work=Join-Path $env:RUNNER_TEMP "folder-parser-work-$Flavor"
$evidence=Join-Path $env:RUNNER_TEMP "folder-parser-evidence-$Flavor"
$workspace=[IO.Path]::GetFullPath($env:GITHUB_WORKSPACE)
$contrib=Join-Path $workspace '.contrib'
$db=Join-Path $contrib '.db'
$tools=Join-Path $contrib '.tools'
$export=Join-Path $workspace 'db'
$originalDb=Join-Path $work 'original-db'
$originalTools=Join-Path $work 'original-tools'
$originalExport=Join-Path $work 'original-export'
$backupDb=$false; $backupTools=$false; $backupExport=$false; $exportIsolated=$false
New-Item -ItemType Directory -Path $work,$evidence -Force | Out-Null
$result=[ordered]@{ flavor=$Flavor; commit=$env:GITHUB_SHA; runs=@{}; inputFileCount=0; exportsEqual=$false; postinputsEqual=$false; passed=$false; error=$null; restored=$false }
function Copy-Tree([string]$Source,[string]$Destination) {
    New-Item -ItemType Directory -Path $Destination -Force | Out-Null
    & robocopy $Source $Destination /E /R:1 /W:1 /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -gt 7) { throw "Copy failed ($LASTEXITCODE): $Source" }
}
function Get-Manifest([string]$Directory) {
    $prefix=[IO.Path]::GetFullPath($Directory).TrimEnd('\')
    @(Get-ChildItem -LiteralPath $prefix -File -Recurse -Force | Sort-Object FullName | ForEach-Object {
        '{0}  {1}' -f (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant(),$_.FullName.Substring($prefix.Length+1).Replace('\','/')
    })
}
function Save-Manifest([string]$Directory,[string]$Path) {
    $lines=@(Get-Manifest $Directory)
    [IO.File]::WriteAllLines($Path,[string[]]$lines,[Text.UTF8Encoding]::new($false))
    return ,$lines
}
function Invoke-Parser([string]$Mode,[string]$Package) {
    $exe=[IO.Path]::GetFullPath((Join-Path $Package 'Parser.exe'))
    $expectedLua=[IO.Path]::GetFullPath((Join-Path $Package 'lua54.dll'))
    if (-not (Test-Path -LiteralPath $exe -PathType Leaf) -or -not (Test-Path -LiteralPath $expectedLua -PathType Leaf)) { throw "$Mode Parser or native Lua is missing." }
    if (@(Get-ChildItem -LiteralPath $tools -Force).Count -ne 0) { throw 'Parser checkout working directory is not empty.' }
    $stdout=Join-Path $evidence "$Mode.stdout.log"; $stderr=Join-Path $evidence "$Mode.stderr.log"
    $args='auto baseconfig="../.db/standard/.config/retail/retail.config"'
    if ($Config) { $args+=' config="'+$Config+'"' }
    $run=[ordered]@{ executable=$exe; expectedLua=$expectedLua; loadedLua=$null; startedUtc=[DateTime]::UtcNow.ToString('o'); exitCode=$null; timedOut=$false; errors=@() }
    $result.runs[$Mode]=$run
    $proc=$null
    try {
        $proc=Start-Process -FilePath $exe -ArgumentList $args -WorkingDirectory $tools -RedirectStandardOutput $stdout -RedirectStandardError $stderr -PassThru -WindowStyle Hidden
        $handle=$proc.Handle
        $watch=[Diagnostics.Stopwatch]::StartNew()
        $lastModuleError=$null
        while ($watch.Elapsed.TotalSeconds -lt 420 -and -not $proc.HasExited) {
            $proc.Refresh()
            if (-not $run.loadedLua) {
                try {
                    $matches=@($proc.Modules | Where-Object { $_.ModuleName -ieq 'lua54.dll' })
                    if ($matches.Count -gt 1) { throw 'More than one lua54.dll module is loaded.' }
                    if ($matches.Count -eq 1) {
                        $run.loadedLua=[IO.Path]::GetFullPath($matches[0].FileName)
                        if (-not $run.loadedLua.Equals($expectedLua,[StringComparison]::OrdinalIgnoreCase)) { throw "Wrong lua54.dll loaded: $($run.loadedLua)" }
                        $run['loadedLuaSha256']=(Get-FileHash -LiteralPath $run.loadedLua -Algorithm SHA256).Hash.ToLowerInvariant()
                    }
                } catch {
                    if ($run.loadedLua -and -not $run.loadedLua.Equals($expectedLua,[StringComparison]::OrdinalIgnoreCase)) { throw }
                    $lastModuleError=$_.Exception.Message
                }
            }
            Start-Sleep -Milliseconds 100
        }
        if (-not $proc.HasExited) { $run.timedOut=$true; $proc.Kill(); $proc.WaitForExit(); $run.errors+='Timed out after 420 seconds' }
        $proc.WaitForExit()
        $run.exitCode=$proc.ExitCode
        if ($null -eq $run.exitCode -or $run.exitCode -ne 0) { $run.errors+="Exit code: $($run.exitCode)" }
        if (-not $run.loadedLua) { $run.errors+="No lua54.dll module observed; last enumeration error: $lastModuleError" }
        if ((Get-Item -LiteralPath $stderr).Length -ne 0) { $run.errors+='Standard error is not empty' }
        $log=[IO.File]::ReadAllText($stdout)
        if ($log -notmatch '(?m)^\d+ ExportAddonData\.\.\.\r?$') { $run.errors+='Missing ExportAddonData marker' }
        if ($log -notmatch '(?m)^\d+ FinalLogging\.\.\.\r?$') { $run.errors+='Missing FinalLogging marker' }
        if ($log -match '(?m)^(ERROR:|==== EXCEPTION ====|-- (Errors encountered|Exception encountered))') { $run.errors+='Parser logged an error' }
        if (Test-Path -LiteralPath (Join-Path $tools 'ATT-ERROR-FILE.txt')) { $run.errors+='ATT-ERROR-FILE.txt exists' }
        $out=Join-Path $export $OutputName
        foreach ($file in 'LocalizationDB.lua','ReferenceDB.lua','Database.xml') {
            $path=Join-Path $out $file
            if (-not (Test-Path -LiteralPath $path -PathType Leaf) -or (Get-Item -LiteralPath $path).Length -eq 0) { $run.errors+="Missing or empty $file" }
        }
        if ($run.errors.Count) { throw "$Mode Parser failed: $($run.errors -join '; ')" }
        $run['finishedUtc']=[DateTime]::UtcNow.ToString('o')
    } finally {
        if ($proc) {
            try { if (-not $proc.HasExited) { $proc.Kill(); $proc.WaitForExit() } } catch { }
            $proc.Dispose()
        }
    }
}
try {
    if (-not (Test-Path -LiteralPath $db -PathType Container) -or -not (Test-Path -LiteralPath $tools -PathType Container)) { throw 'Expected checkout data and tools directories.' }
    $configFiles=@((Join-Path $db 'shared/.config/root.config'),(Join-Path $db 'standard/.config/retail/retail.config'))
    if ($Config) { $configFiles+=Join-Path $tools $Config }
    $settings=@{}
    foreach ($file in $configFiles) {
        $text=Get-Content -LiteralPath $file -Raw
        foreach ($key in 'IgnoreWowheadRetrieval','DoConsolidateObjectDB') {
            foreach ($match in [regex]::Matches($text,'"'+$key+'"\s*:\s*(true|false)','IgnoreCase')) { $settings[$key]=$match.Groups[1].Value.ToLowerInvariant() }
        }
    }
    if ($settings.IgnoreWowheadRetrieval -ne 'true' -or $settings.DoConsolidateObjectDB -ne 'false') { throw 'Parser offline settings differ.' }
    $result['offlineSettings']=$settings
    $inputManifest=Save-Manifest $db (Join-Path $evidence 'source-input.log')
    if ($inputManifest.Count -eq 0) { throw 'Parser source data empty.' }
    $result.inputFileCount=$inputManifest.Count
    Move-Item -LiteralPath $db -Destination $originalDb; $backupDb=$true
    Move-Item -LiteralPath $tools -Destination $originalTools; $backupTools=$true
    if (Test-Path -LiteralPath $export) { Move-Item -LiteralPath $export -Destination $originalExport; $backupExport=$true }
    $exportIsolated=$true
    $packages=@{ build=(Join-Path $env:RUNNER_TEMP 'folder-parser-baseline'); publish=(Join-Path $env:RUNNER_TEMP 'folder-parser-publish') }
    foreach ($mode in 'build','publish') {
        Copy-Tree $originalDb $db
        if (Compare-Object $inputManifest @(Get-Manifest $db)) { throw "$mode data snapshot differs from checkout." }
        New-Item -ItemType Directory -Path $tools | Out-Null
        Invoke-Parser $mode $packages[$mode]
        $header=Join-Path $db 'shared/constants/headerIDs.lua'
        if (-not (Test-Path -LiteralPath $header -PathType Leaf)) { throw "$mode headerIDs.lua missing" }
        $result.runs[$mode]['headerSha256']=(Get-FileHash -LiteralPath $header -Algorithm SHA256).Hash.ToLowerInvariant()
        $exportManifest=Save-Manifest $export (Join-Path $evidence "$mode.exports.log")
        if ($exportManifest.Count -eq 0) { throw "$mode exports empty." }
        $exportFiles=@(Get-ChildItem -LiteralPath $export -File -Recurse -Force)
        $result.runs[$mode]['outputFileCount']=$exportFiles.Count
        $result.runs[$mode]['outputBytes']=[long](($exportFiles | Measure-Object -Property Length -Sum).Sum)
        $postInputs=Save-Manifest $db (Join-Path $evidence "$mode.post-inputs.log")
        $result.runs[$mode]['postinputsFileCount']=$postInputs.Count
        Move-Item -LiteralPath $db -Destination (Join-Path $work "$mode-db")
        Move-Item -LiteralPath $export -Destination (Join-Path $work "$mode-export")
        Move-Item -LiteralPath $tools -Destination (Join-Path $work "$mode-tools")
    }
    if ($result.runs.build.headerSha256 -ne $result.runs.publish.headerSha256) { throw 'headerIDs.lua differs.' }
    foreach ($kind in 'exports','post-inputs') {
        $differences=@(Compare-Object (Get-Content (Join-Path $evidence "build.$kind.log")) (Get-Content (Join-Path $evidence "publish.$kind.log")))
        if ($differences.Count) { $differences | Out-String | Set-Content -LiteralPath (Join-Path $evidence "$kind-differences.log"); throw "$kind differs: $($differences.Count) entries" }
        if ($kind -eq 'exports') { $result.exportsEqual=$true } else { $result.postinputsEqual=$true }
    }
    $result.passed=$true
} catch { $result.error=$_.Exception.ToString(); throw }
finally {
    # Move run-specific data away, then restore the original checkout directories even on failure.
    if ($backupDb) {
        if (Test-Path -LiteralPath $db) { Move-Item -LiteralPath $db -Destination (Join-Path $work 'interrupted-db') }
        Move-Item -LiteralPath $originalDb -Destination $db
    }
    if ($backupTools) {
        if (Test-Path -LiteralPath $tools) { Move-Item -LiteralPath $tools -Destination (Join-Path $work 'interrupted-tools') }
        Move-Item -LiteralPath $originalTools -Destination $tools
    }
    if ($exportIsolated) {
        if (Test-Path -LiteralPath $export) { Move-Item -LiteralPath $export -Destination (Join-Path $work 'interrupted-export') }
        if ($backupExport) { Move-Item -LiteralPath $originalExport -Destination $export }
    }
    $result.restored=($backupDb -and $backupTools -and (Test-Path -LiteralPath $db) -and (Test-Path -LiteralPath $tools) -and (-not $backupExport -or (Test-Path -LiteralPath $export)))
    [IO.File]::WriteAllText((Join-Path $evidence 'result.json'),($result | ConvertTo-Json -Depth 10),[Text.UTF8Encoding]::new($false))
    Write-Host ('FOLDER_PARSER_RESULT=' + (ConvertTo-Json -InputObject $result -Depth 10 -Compress))
}

exit 0
