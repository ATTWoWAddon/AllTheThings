param(
    [Parameter(Mandatory = $true)][string] $Release,
    [Parameter(Mandatory = $true)][string] $FixtureRoot,
    [Parameter(Mandatory = $true)][string] $Evidence
)
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
if (!(Test-Path -LiteralPath $Release -PathType Container)) { throw "Release outputs missing: $Release" }
if ((Test-Path -LiteralPath $FixtureRoot) -and @(Get-ChildItem -LiteralPath $FixtureRoot -Force).Count -ne 0) { throw "FixtureRoot must be empty: $FixtureRoot" }
New-Item -ItemType Directory -Force -Path $FixtureRoot, $Evidence | Out-Null
$runtimeRoot = Join-Path $FixtureRoot 'apps'
New-Item -ItemType Directory -Path $runtimeRoot | Out-Null
$utf8 = [Text.UTF8Encoding]::new($false)
$processes = [Collections.Generic.List[object]]::new()

function Invoke-FixtureProcess([string] $FileName, [string[]] $Arguments, [string] $WorkingDirectory, [string] $Label, [int] $TimeoutSeconds = 90) {
    $info = [Diagnostics.ProcessStartInfo]::new()
    $info.FileName = $FileName
    $info.WorkingDirectory = $WorkingDirectory
    $info.UseShellExecute = $false
    $info.RedirectStandardInput = $true
    $info.RedirectStandardOutput = $true
    $info.RedirectStandardError = $true
    foreach ($argument in $Arguments) { [void] $info.ArgumentList.Add($argument) }
    $process = [Diagnostics.Process]::new()
    $process.StartInfo = $info
    try {
        if (!$process.Start()) { throw "Could not start $Label" }
        $process.StandardInput.Close()
        $stdout = $process.StandardOutput.ReadToEndAsync()
        $stderr = $process.StandardError.ReadToEndAsync()
        $timedOut = !$process.WaitForExit($TimeoutSeconds * 1000)
        if ($timedOut) { $process.Kill($true); $process.WaitForExit() }
        [IO.File]::WriteAllText((Join-Path $Evidence "$Label.stdout.txt"), $stdout.GetAwaiter().GetResult(), $utf8)
        [IO.File]::WriteAllText((Join-Path $Evidence "$Label.stderr.txt"), $stderr.GetAwaiter().GetResult(), $utf8)
        $record = [pscustomobject]@{ executable=$FileName; arguments=@($Arguments); cwd=$WorkingDirectory; timeoutSeconds=$TimeoutSeconds; timedOut=$timedOut; exitCode=$process.ExitCode }
        $processes.Add($record)
        $record | ConvertTo-Json -Depth 5 | Set-Content -Encoding utf8 (Join-Path $Evidence "$Label.process.json")
        if ($timedOut -or $process.ExitCode -ne 0) { throw "$Label failed or timed out; see $Evidence" }
    } finally { $process.Dispose() }
}

$names = @('Parser','CSVCleaner','Blizzard API Harvester','Classic Item Detector','Item DB Compare Tool')
$hashes = foreach ($name in $names) {
    $originalDir = Join-Path $Release $name
    $originalExe = Join-Path $originalDir "$name.exe"
    if (!(Test-Path -LiteralPath $originalExe -PathType Leaf)) { throw "Fresh output missing: $originalExe" }
    $copyDir = Join-Path $runtimeRoot $name
    Copy-Item -LiteralPath $originalDir -Destination $copyDir -Recurse
    $copyExe = Join-Path $copyDir "$name.exe"
    $originalHash = (Get-FileHash -LiteralPath $originalExe -Algorithm SHA256).Hash
    $copyHash = (Get-FileHash -LiteralPath $copyExe -Algorithm SHA256).Hash
    if ($originalHash -ne $copyHash) { throw "Runtime copy hash mismatch: $name" }
    [pscustomobject]@{ name=$name; original=$originalExe; copy=$copyExe; sha256=$copyHash }
}
$hashes | ConvertTo-Json -Depth 4 | Set-Content -Encoding utf8 (Join-Path $Evidence 'src-executable-hashes.json')

# Parser's checked-in test creates its own separate x64 host and temp fixture.
$parserDir = Join-Path $runtimeRoot 'Parser'
$parser = Join-Path $parserDir 'Parser.exe'
$parserTest = Join-Path $env:GITHUB_WORKSPACE '.contrib/src/Parser/tests/CostMerge.Tests.ps1'
if (!(Test-Path -LiteralPath $parserTest -PathType Leaf)) { throw "Parser test missing: $parserTest" }
$parserConfig = "$parser.config"
[pscustomobject]@{ executable=$parser; configPath=$parserConfig; configPresent=(Test-Path -LiteralPath $parserConfig -PathType Leaf); explanation='Built output only; no repository config substituted.' } |
    ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $Evidence 'parser-config-observation.json')
$powershell = Join-Path $env:WINDIR 'System32/WindowsPowerShell/v1.0/powershell.exe'
Invoke-FixtureProcess $powershell @('-NoProfile','-NonInteractive','-ExecutionPolicy','Bypass','-File',$parserTest,'-ParserPath',$parser) $parserDir 'parser-cost-merge' 120
if (([IO.File]::ReadAllText((Join-Path $Evidence 'parser-cost-merge.stdout.txt'))) -notmatch 'All 8 cost merge tests passed\.') { throw 'Parser cost-merge success marker missing.' }

$csvDir = Join-Path $runtimeRoot 'CSVCleaner'
$csvWork = Join-Path $FixtureRoot 'csv-case'
New-Item -ItemType Directory -Path $csvWork | Out-Null
$csv = Join-Path $csvWork 'input.csv'
[IO.File]::WriteAllText($csv, "ID,Text`r`n20,second`r`n3,first`r`n", $utf8)
Invoke-FixtureProcess (Join-Path $csvDir 'CSVCleaner.exe') @($csv) $csvWork 'csv-cleaner'
$csvExpected = "ID,Text`n3,first`n20,second`n"
$csvActual = [IO.File]::ReadAllText($csv).Replace("`r`n", "`n")
[IO.File]::WriteAllText((Join-Path $Evidence 'csv-expected.txt'), $csvExpected, $utf8)
[IO.File]::WriteAllText((Join-Path $Evidence 'csv-actual.txt'), $csvActual, $utf8)
if ($csvActual -cne $csvExpected) { throw 'CSVCleaner output did not match the independently expected records.' }

$compareDir = Join-Path $runtimeRoot 'Item DB Compare Tool'
$compareWork = Join-Path $FixtureRoot 'compare-case'
New-Item -ItemType Directory -Path $compareWork | Out-Null
[IO.File]::WriteAllText((Join-Path $compareWork 'fixture-itemDB.json'), '{"items":[{"itemID":101,"name":"alpha","quality":2,"ignoreSource":true}]}', $utf8)
Invoke-FixtureProcess (Join-Path $compareDir 'Item DB Compare Tool.exe') @() $compareWork 'item-db-compare'
$comparePath = Join-Path $compareWork 'itemDB-FULL.json'
if (!(Test-Path -LiteralPath $comparePath -PathType Leaf)) { throw 'Compare fixture output missing.' }
$compareJson = [IO.File]::ReadAllText($comparePath)
[IO.File]::WriteAllText((Join-Path $Evidence 'item-db-compare-actual.json'), $compareJson, $utf8)
[IO.File]::WriteAllText((Join-Path $Evidence 'item-db-compare-expected.json'), '{"items":[{"itemID":101,"name":"alpha","q":2}]}', $utf8)
$parsed = $compareJson | ConvertFrom-Json
if (@($parsed.PSObject.Properties).Count -ne 1 -or @($parsed.items).Count -ne 1) { throw 'Compare result shape differs.' }
$item = @($parsed.items)[0]
$keys = @($item.PSObject.Properties.Name | Sort-Object)
if ($keys.Count -ne 3 -or ($keys -join ',') -cne 'itemID,name,q' -or $item.itemID -ne 101 -or $item.name -cne 'alpha' -or $item.q -ne 2) { throw 'Compare output semantics differ.' }

# The helper loads each actual EXE in a separate process and invokes offline methods only.
$fixtureSource = Join-Path $PSScriptRoot 'att-src-runtime-fixture.cs'
if (!(Test-Path -LiteralPath $fixtureSource -PathType Leaf)) { throw "Fixture source missing: $fixtureSource" }
$harness = Join-Path $FixtureRoot 'SrcOfflineFixture.exe'
$csc = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319/csc.exe'
Invoke-FixtureProcess $csc @('/nologo','/target:exe','/platform:x64',"/out:$harness",$fixtureSource) $FixtureRoot 'offline-harness-build'
foreach ($entry in @(@{Name='Classic Item Detector'; Mode='classic'}, @{Name='Blizzard API Harvester'; Mode='harvester'})) {
    $app = Join-Path (Join-Path $runtimeRoot $entry.Name) "$($entry.Name).exe"
    $work = Join-Path $FixtureRoot "offline-$($entry.Mode)"
    New-Item -ItemType Directory -Path $work | Out-Null
    Invoke-FixtureProcess $harness @($app,$entry.Mode) $work "offline-$($entry.Mode)"
    if (([IO.File]::ReadAllText((Join-Path $Evidence "offline-$($entry.Mode).stdout.txt"))) -notmatch "^PASS $($entry.Mode) ") { throw "Offline fixture pass marker missing: $($entry.Mode)" }
}
[pscustomobject]@{
    passed=$true; processes=$processes.ToArray(); parser='built Parser Cost.Merge synthetic tests; no full parse'; csv='actual exe, synthetic CSV sort'; compare='actual exe, one synthetic input and normalized output'; classic='offline JSON and class filtering, no Main or API'; harvester='offline JSON only, no Main or API'; parserConfigPresent=(Test-Path -LiteralPath $parserConfig -PathType Leaf)
} | ConvertTo-Json -Depth 8 | Set-Content -Encoding utf8 (Join-Path $Evidence 'src-runtime-result.json')
