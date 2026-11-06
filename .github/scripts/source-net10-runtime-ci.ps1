param(
    [Parameter(Mandatory = $true)][string] $Release,
    [Parameter(Mandatory = $true)][string] $FixtureRoot,
    [Parameter(Mandatory = $true)][string] $Evidence,
    [string] $SharedTools
)
$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force $FixtureRoot, $Evidence | Out-Null

function Invoke-FixtureProcess {
    param(
        [string] $FileName,
        [string[]] $Arguments,
        [string] $WorkingDirectory,
        [string] $Label,
        [int] $TimeoutSeconds = 60,
        [hashtable] $Environment = @{}
    )
    $info = [System.Diagnostics.ProcessStartInfo]::new()
    $info.FileName = $FileName
    $info.WorkingDirectory = $WorkingDirectory
    $info.UseShellExecute = $false
    $info.RedirectStandardInput = $true
    $info.RedirectStandardOutput = $true
    $info.RedirectStandardError = $true
    foreach ($argument in $Arguments) { [void] $info.ArgumentList.Add($argument) }
    foreach ($key in $Environment.Keys) { $info.Environment[$key] = $Environment[$key] }
    $process = [System.Diagnostics.Process]::new()
    $process.StartInfo = $info
    if (!$process.Start()) { throw "Could not start $Label" }
    $process.StandardInput.Close()
    $stdout = $process.StandardOutput.ReadToEndAsync()
    $stderr = $process.StandardError.ReadToEndAsync()
    $timedOut = !$process.WaitForExit($TimeoutSeconds * 1000)
    if ($timedOut) { $process.Kill($true); $process.WaitForExit() }
    $outputText = $stdout.GetAwaiter().GetResult()
    $errorText = $stderr.GetAwaiter().GetResult()
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.stdout.txt"), $outputText)
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.stderr.txt"), $errorText)
    [pscustomobject]@{
        executable = $FileName; arguments = @($Arguments); workingDirectory = $WorkingDirectory
        exitCode = $process.ExitCode; timedOut = $timedOut; timeoutSeconds = $TimeoutSeconds
    } | ConvertTo-Json -Depth 5 | Set-Content -Encoding utf8 (Join-Path $Evidence "$Label.process.json")
    if ($timedOut -or $process.ExitCode -ne 0) { throw "$Label failed or timed out (exit $($process.ExitCode)); see $Evidence" }
}

function Assert-Text([string] $Path, [string] $Expected, [string] $Label) {
    if (!(Test-Path -LiteralPath $Path -PathType Leaf)) { throw "$Label output missing: $Path" }
    $actual = [System.IO.File]::ReadAllText($Path).Replace("`r`n", "`n")
    $expectedText = $Expected.Replace("`r`n", "`n")
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.expected.txt"), $expectedText)
    [System.IO.File]::WriteAllText((Join-Path $Evidence "$Label.actual.txt"), $actual)
    if ($actual -cne $expectedText) { throw "$Label output did not match fixture expectation" }
}

# AssetDB: execute the actual tool against a synthetic input in a separate repository-shaped tree.
$assetRepo = Join-Path $FixtureRoot 'asset-repo'
$assetWork = Join-Path $assetRepo '.contrib/.tools'
if ($SharedTools) {
    if (!(Test-Path -LiteralPath $SharedTools -PathType Container)) { throw "Shared tools folder missing: $SharedTools" }
    $assetWork = $SharedTools
    $assetRepo = [System.IO.Directory]::GetParent([System.IO.Directory]::GetParent($SharedTools).FullName).FullName
}
$assetInput = Join-Path $assetRepo '.contrib/.raw/AssetDB'
New-Item -ItemType Directory -Force $assetWork, $assetInput | Out-Null
[System.IO.File]::WriteAllText((Join-Path $assetInput 'fixture.json'), '{"20":false,"3":{"x":1}}')
$assetExe = if ($SharedTools) { Join-Path $SharedTools 'AssetDB Builder.exe' } else { Join-Path $Release 'AssetDB Builder/AssetDB Builder.exe' }
Invoke-FixtureProcess $assetExe @() $assetWork 'asset-exe'
$assetExpected = "-- #if fixture`n_.AssetDB = {`n[3]=1,`n[20]=1,`n};`n-- #endif`n"
Assert-Text (Join-Path $assetRepo '.contrib/.db/standard/00 - DB/AssetDB/fixture.lua') $assetExpected 'asset-output'

# IconID: provide a local listfile to avoid downloads, then check both replacement and a non-match.
$iconRepo = Join-Path $FixtureRoot 'icon-repo'
$iconWork = Join-Path $iconRepo '.contrib/.tools'
if ($SharedTools) { $iconRepo = $assetRepo; $iconWork = $SharedTools }
$iconData = Join-Path $iconWork 'Wago'
$iconSource = Join-Path $iconRepo 'src'
New-Item -ItemType Directory -Force $iconData, $iconSource | Out-Null
[System.IO.File]::WriteAllText((Join-Path $iconData 'community-listfile.csv'), "12345;Interface/Icons/inv_test.blp`n")
$iconFile = Join-Path $iconSource 'fixture.lua'
[System.IO.File]::WriteAllText($iconFile, "local icon = `"Interface/Icons/inv_test`"`nlocal untouched = `"Interface/Icons/missing`"`n")
$iconExe = if ($SharedTools) { Join-Path $SharedTools 'IconID Converter.exe' } else { Join-Path $Release 'IconID Converter/IconID Converter.exe' }
Invoke-FixtureProcess $iconExe @() $iconWork 'icon-exe'
Assert-Text $iconFile "local icon = 12345`nlocal untouched = `"Interface/Icons/missing`"`n" 'icon-output'

# Skill: the executable always requests live Wowhead pages. Test its real built
# parsing code with a separate .NET 10 harness and synthetic page content instead.
$harness = Join-Path $FixtureRoot 'skill-harness'
New-Item -ItemType Directory -Force $harness | Out-Null
@'
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net10.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <NuGetAudit>false</NuGetAudit>
  </PropertyGroup>
</Project>
'@ | Set-Content -Encoding utf8 (Join-Path $harness 'SkillHarness.csproj')
@'
<?xml version="1.0" encoding="utf-8"?>
<configuration><packageSources><clear /></packageSources></configuration>
'@ | Set-Content -Encoding utf8 (Join-Path $harness 'NuGet.Config')
@'
using System.Reflection;
using System.Runtime.Loader;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;

var toolDir = Path.GetFullPath(args[0]);
var jsonPath = Path.Combine(toolDir, "Newtonsoft.Json.dll");
var skillPath = Path.Combine(toolDir, "Skill Level Requirements.dll");
AssemblyLoadContext.Default.Resolving += (_, name) =>
    name.Name == "Newtonsoft.Json" ? AssemblyLoadContext.Default.LoadFromAssemblyPath(jsonPath) : null;
var skill = AssemblyLoadContext.Default.LoadFromAssemblyPath(skillPath);
var parse = skill.GetType("ATT.Helper", throwOnError: true)!.GetMethod("Parse", BindingFlags.Public | BindingFlags.Static)!;
string page = "fixture var listviewspells = [{\"id\":42,\"name\":\"Later\",\"learnedat\":75},{\"id\":7,\"name\":\"Earlier\",\"learnedat\":5}];";
string expected = "\n-- Alchemy\nfor spellID,learnedAt in pairs({\n\t[7] = 5,\t-- Earlier\n\t[42] = 75,\t-- Later\n}) do recipeDB[spellID].learnedAt = learnedAt; end\n";
string expectedChanged = "\n-- Alchemy\nfor spellID,learnedAt in pairs({\n\t[42] = 80,\t-- Later\n}) do recipeDB[spellID].learnedAt = learnedAt; end\n";
string Run(string source) {
    var output = new StringBuilder();
    parse.Invoke(null, new object[] { source, output, "Alchemy" });
    return output.ToString().Replace("\r\n", "\n");
}
var first = Run(page);
var repeated = Run(page);
var changed = Run(page.Replace("\"learnedat\":75", "\"learnedat\":80"));
var json = AppDomain.CurrentDomain.GetAssemblies().Single(a => a.GetName().Name == "Newtonsoft.Json");
string actualPath = Path.GetFullPath(json.Location);
string actualHash = Convert.ToHexString(SHA256.HashData(File.ReadAllBytes(actualPath)));
string expectedHash = args[1];
Console.WriteLine(JsonSerializer.Serialize(new {
    skillAssembly = skill.Location, jsonAssembly = actualPath, jsonSha256 = actualHash, expectedHash,
    expected, actual = first, expectedRepeated = "", actualRepeated = repeated,
    expectedChanged, actualChanged = changed
}));
if (first != expected || repeated != "" || changed != expectedChanged ||
    !String.Equals(actualPath, jsonPath, StringComparison.OrdinalIgnoreCase) ||
    !String.Equals(actualHash, expectedHash, StringComparison.OrdinalIgnoreCase))
    throw new Exception("Skill parser or Newtonsoft assembly verification failed");
'@ | Set-Content -Encoding utf8 (Join-Path $harness 'Program.cs')
$dotnet = (Get-Command dotnet -CommandType Application | Select-Object -First 1).Source
$offlineEnvironment = @{
    NUGET_PACKAGES = (Join-Path $harness 'empty-nuget')
    NUGET_HTTP_CACHE_PATH = (Join-Path $harness 'empty-http-cache')
    DOTNET_CLI_WORKLOAD_UPDATE_NOTIFY_DISABLE = 'true'
}
Invoke-FixtureProcess $dotnet @('restore', (Join-Path $harness 'SkillHarness.csproj'), '--configfile', (Join-Path $harness 'NuGet.Config')) $harness 'skill-harness-restore' 60 $offlineEnvironment
Invoke-FixtureProcess $dotnet @('build', (Join-Path $harness 'SkillHarness.csproj'), '--configuration', 'Release', '--no-restore') $harness 'skill-harness-build' 60 $offlineEnvironment
$skillDir = if ($SharedTools) { $SharedTools } else { Join-Path $Release 'Skill Level Requirements' }
$expectedJsonHash = (Get-FileHash -LiteralPath (Join-Path $skillDir 'Newtonsoft.Json.dll') -Algorithm SHA256).Hash
Invoke-FixtureProcess $dotnet @((Join-Path $harness 'bin/Release/net10.0/SkillHarness.dll'), $skillDir, $expectedJsonHash) $harness 'skill-parser' 60 $offlineEnvironment
