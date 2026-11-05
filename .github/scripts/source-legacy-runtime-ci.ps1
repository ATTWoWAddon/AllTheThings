param(
    [Parameter(Mandatory = $true)][string] $Release,
    [Parameter(Mandatory = $true)][string] $FixtureRoot,
    [Parameter(Mandatory = $true)][string] $Evidence,
    [string] $SharedTools
)
$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force $FixtureRoot, $Evidence | Out-Null

function Invoke-LegacyProcess([string] $FileName, [string[]] $Arguments, [string] $WorkingDirectory, [string] $Label, [int] $TimeoutSeconds = 60) {
    $info = [System.Diagnostics.ProcessStartInfo]::new()
    $info.FileName = $FileName
    $info.WorkingDirectory = $WorkingDirectory
    $info.UseShellExecute = $false
    $info.RedirectStandardInput = $true
    $info.RedirectStandardOutput = $true
    $info.RedirectStandardError = $true
    foreach ($argument in $Arguments) { [void] $info.ArgumentList.Add($argument) }
    $process = [System.Diagnostics.Process]::new()
    $process.StartInfo = $info
    if (!$process.Start()) { throw "Could not start $Label" }
    $process.StandardInput.Close()
    $stdout = $process.StandardOutput.ReadToEndAsync()
    $stderr = $process.StandardError.ReadToEndAsync()
    $timedOut = !$process.WaitForExit($TimeoutSeconds * 1000)
    if ($timedOut) { $process.Kill($true); $process.WaitForExit() }
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.stdout.txt"), $stdout.GetAwaiter().GetResult())
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.stderr.txt"), $stderr.GetAwaiter().GetResult())
    [pscustomobject]@{ executable = $FileName; arguments = @($Arguments); workingDirectory = $WorkingDirectory; exitCode = $process.ExitCode; timedOut = $timedOut; timeoutSeconds = $TimeoutSeconds } |
        ConvertTo-Json -Depth 5 | Set-Content -Encoding utf8 (Join-Path $Evidence "$Label.process.json")
    if ($timedOut -or $process.ExitCode -ne 0) { throw "$Label failed or timed out (exit $($process.ExitCode)); see $Evidence" }
}

$harnessDir = Join-Path $FixtureRoot 'legacy-harness'
New-Item -ItemType Directory -Force $harnessDir | Out-Null
$csc = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319/csc.exe'
$harness = Join-Path $harnessDir 'SourceLegacyRuntimeHarness.exe'
$source = Join-Path $PSScriptRoot 'source-legacy-runtime-harness.cs'
Invoke-LegacyProcess $csc @('/nologo', '/target:exe', '/platform:x64', '/reference:System.Windows.Forms.dll', '/reference:System.Drawing.dll', "/out:$harness", $source) $harnessDir 'legacy-harness-build'

$itemRepo = Join-Path $FixtureRoot 'item-repo'
$itemWork = Join-Path $itemRepo '.contrib/.tools'
$itemInput = Join-Path $itemRepo '.contrib/.raw/ItemDB'
if ($SharedTools) {
    if (!(Test-Path -LiteralPath $SharedTools -PathType Container)) { throw "Shared tools folder missing: $SharedTools" }
    if (![string]::Equals([System.IO.Path]::GetFullPath($SharedTools).TrimEnd('\', '/'), [System.IO.Path]::GetFullPath($itemWork).TrimEnd('\', '/'), [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Shared tools folder must be the item fixture working directory: $itemWork"
    }
}
New-Item -ItemType Directory -Force $itemWork, $itemInput | Out-Null
@'
DBContext = "TEST"
DBFileName = "fixture"
ItemDB = { [42] = { name = "Example", itemID = 42, quality = 2 }, [2] = { name = "Low", quality = 1 } }
'@ | Set-Content -Encoding utf8 (Join-Path $itemInput 'fixture.lua')
$itemDir = if ($SharedTools) { $SharedTools } else { Join-Path $Release 'Item Database Consolidator' }
$itemExe = Join-Path $itemDir 'Item Database Consolidator.exe'
Copy-Item $harness (Join-Path $itemDir 'SourceLegacyRuntimeHarness.exe')
Copy-Item (Join-Path $itemDir 'Item Database Consolidator.exe.config') (Join-Path $itemDir 'SourceLegacyRuntimeHarness.exe.config')
$itemFile = Join-Path $itemRepo '.contrib/.db/standard/00 - Item DB/.dynamic/fixture.lua'
$itemExpected = @'
-- #if TEST
_.ItemDB = {
[2]={["name"]="Low",["quality"]=1},
[42]={["name"]="Example",["quality"]=2},
};
-- #endif
'@
$itemExpected = $itemExpected.Replace("`r`n", "`n").TrimEnd("`n")
function Assert-ItemOutput([string] $Label) {
    if (!(Test-Path -LiteralPath $itemFile -PathType Leaf)) { throw "Item output missing: $itemFile" }
    $actual = [System.IO.File]::ReadAllText($itemFile).Replace("`r`n", "`n").TrimEnd("`n")
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.expected.txt"), $itemExpected)
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.actual.txt"), $actual)
    if ($actual -cne $itemExpected) { throw "$Label did not match fixture expectation." }
}
Invoke-LegacyProcess $itemExe @() $itemWork 'item-exe'
Assert-ItemOutput 'item-exe-output'
Remove-Item -LiteralPath $itemFile
Invoke-LegacyProcess (Join-Path $itemDir 'SourceLegacyRuntimeHarness.exe') @('item', $itemInput) $itemWork 'item-loaded-modules'
Assert-ItemOutput 'item-module-output'

# Use only new, synthetic keys on this ephemeral Windows runner.
$wowKey = 'HKLM:\SOFTWARE\Wow6432Node\Blizzard Entertainment\World of Warcraft'
$syncKey = 'HKCU:\SOFTWARE\ATT\ATT Sync Tool'
$wowParent = 'HKLM:\SOFTWARE\Wow6432Node\Blizzard Entertainment'
$syncParent = 'HKCU:\SOFTWARE\ATT'
$runKey = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run'
$runNames = @('ATT Sync Tool', 'SourceLegacyRuntimeHarness')
if ((Test-Path $wowKey) -or (Test-Path $syncKey)) { throw 'Refusing to replace pre-existing WoW or ATT Sync registry keys.' }
foreach ($name in $runNames) {
    if ($null -ne (Get-ItemProperty -Path $runKey -Name $name -ErrorAction SilentlyContinue)) { throw "Refusing to replace pre-existing Run registry value: $name" }
}
$wowCreated = $false
$syncCreated = $false
$wowParentCreated = $false
$syncParentCreated = $false
try {
    $wowRoot = Join-Path $FixtureRoot 'synthetic-wow'
    $accountDir = Join-Path $wowRoot '_retail_/fixture-account'
    $savedDir = Join-Path $accountDir 'SavedVariables'
    New-Item -ItemType Directory -Force $savedDir | Out-Null
    @'
Probe = { value = 42, active = true, nested = { text = "sample" } }
'@ | Set-Content -Encoding utf8 (Join-Path $savedDir 'AllTheThings.lua')
    if (!(Test-Path $wowParent)) { New-Item -Path $wowParent | Out-Null; $wowParentCreated = $true }
    if (!(Test-Path $syncParent)) { New-Item -Path $syncParent | Out-Null; $syncParentCreated = $true }
    New-Item -Path $wowKey -Force | Out-Null
    $wowCreated = $true
    New-ItemProperty -Path $wowKey -Name InstallPath -Value $wowRoot -PropertyType String -Force | Out-Null
    New-Item -Path $syncKey -Force | Out-Null
    $syncCreated = $true
    New-ItemProperty -Path $syncKey -Name StartupAutomatically -Value 0 -PropertyType DWord -Force | Out-Null
    $syncDir = if ($SharedTools) { $SharedTools } else { Join-Path $Release 'ATT Sync Tool' }
    Copy-Item $harness (Join-Path $syncDir 'SourceLegacyRuntimeHarness.exe')
    Copy-Item (Join-Path $syncDir 'ATT Sync Tool.exe.config') (Join-Path $syncDir 'SourceLegacyRuntimeHarness.exe.config')
    Invoke-LegacyProcess (Join-Path $syncDir 'SourceLegacyRuntimeHarness.exe') @('sync', $accountDir) $syncDir 'sync-form-and-database'
    Copy-Item -LiteralPath (Join-Path $savedDir 'AllTheThings.lua') -Destination (Join-Path $Evidence 'database-rewritten.lua.txt')
    $moduleLabels = @('item-loaded-modules', 'sync-form-and-database')
    if ($SharedTools) {
        $parserExe = Join-Path $SharedTools 'Parser.exe'
        $parserConfig = Join-Path $SharedTools 'Parser.exe.config'
        if (!(Test-Path -LiteralPath $parserExe -PathType Leaf) -or !(Test-Path -LiteralPath $parserConfig -PathType Leaf)) {
            throw 'Parser executable or its configuration is missing from the shared tools folder.'
        }
        Copy-Item $parserConfig (Join-Path $SharedTools 'SourceLegacyRuntimeHarness.exe.config') -Force
        Invoke-LegacyProcess (Join-Path $SharedTools 'SourceLegacyRuntimeHarness.exe') @('parser', $accountDir) $SharedTools 'parser-loaded-modules'
        $moduleLabels += 'parser-loaded-modules'
    }
    $moduleEvidence = foreach ($label in $moduleLabels) {
        $found = @()
        foreach ($line in Get-Content (Join-Path $Evidence "$label.stdout.txt")) {
            if ($line -match '^(ASSEMBLY|NATIVE) (NLua|KeraLua|lua54) (.+) SHA256=([0-9A-F]{64})$') {
                $found += [pscustomobject]@{ test = $label; kind = $Matches[1]; name = $Matches[2]; path = $Matches[3]; sha256 = $Matches[4] }
            }
        }
        if ($found.Count -ne 3) { throw "Missing loaded module evidence for $label" }
        $found
    }
    $moduleEvidence | ConvertTo-Json -Depth 5 | Set-Content -Encoding utf8 (Join-Path $Evidence 'legacy-loaded-modules.json')
    foreach ($name in $runNames) {
        if ($null -ne (Get-ItemProperty -Path $runKey -Name $name -ErrorAction SilentlyContinue)) { throw "Unexpected startup registry value was created: $name" }
    }
} finally {
    foreach ($name in $runNames) {
        if ($null -ne (Get-ItemProperty -Path $runKey -Name $name -ErrorAction SilentlyContinue)) { Remove-ItemProperty -Path $runKey -Name $name -ErrorAction SilentlyContinue }
    }
    if ($syncCreated) { Remove-Item -Path $syncKey -Recurse -Force }
    if ($wowCreated) { Remove-Item -Path $wowKey -Recurse -Force }
    if ($syncParentCreated) { Remove-Item -Path $syncParent -Force }
    if ($wowParentCreated) { Remove-Item -Path $wowParent -Force }
}
