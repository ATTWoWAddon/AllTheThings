param(
    [Parameter(Mandatory)][string]$StageDirectory,
    [Parameter(Mandatory)][string]$EvidenceDirectory
)

$ErrorActionPreference = 'Stop'
$repositoryRoot = (Resolve-Path (Join-Path $PSScriptRoot '../..')).Path
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
$msbuild = & $vswhere -latest -requires Microsoft.Component.MSBuild -find 'MSBuild\**\Bin\amd64\MSBuild.exe' | Select-Object -First 1
if (-not $msbuild) { throw '64-bit MSBuild was not found.' }
if (Test-Path -LiteralPath $StageDirectory) { throw "ItemDB stage already exists: $StageDirectory" }

$stageTools = Join-Path $StageDirectory 'tools'
New-Item -ItemType Directory -Path $stageTools, $EvidenceDirectory -Force | Out-Null
$project = Join-Path $repositoryRoot '.contrib/.source/Item Database Consolidator/Item Database Consolidator.csproj'
$outputPath = $stageTools.Replace('\', '/').TrimEnd('/') + '/'
$buildLog = Join-Path $EvidenceDirectory 'consolidator-build.log'
& $msbuild $project /t:Rebuild /p:Configuration=Release /p:Platform=AnyCPU /p:PlatformTarget=x64 /p:Prefer32Bit=false "/p:OutDir=$outputPath" "/p:OutputPath=$outputPath" /verbosity:minimal /nologo *> $buildLog
if ($LASTEXITCODE -ne 0) { throw "ItemDB Consolidator build failed with exit code $LASTEXITCODE. See $buildLog." }

Copy-Item -LiteralPath (Join-Path $repositoryRoot '.contrib/.tools/lua54.dll') -Destination $stageTools
$executable = Join-Path $stageTools 'Item Database Consolidator.exe'
$raw = Join-Path $repositoryRoot '.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua'
$rawName = Split-Path $raw -Leaf
$rawText = [IO.File]::ReadAllText($raw)
$candidateTag = 'DBContext = "WRATH_CLASSIC_ITEMDB";'
if (!$rawText.StartsWith($candidateTag + "`r`n") -and !$rawText.StartsWith($candidateTag + "`n")) {
    throw 'The Wrath raw capture does not start with the dedicated ItemDB tag.'
}

# Recreate the original raw input and check it against the signed Titan parent.
$baselineText = 'DBContext = "WRATH";' + $rawText.Substring($candidateTag.Length)
$utf8 = [Text.UTF8Encoding]::new($false)
$canonicalBaseline = $utf8.GetBytes($baselineText.Replace("`r`n", "`n"))
$baselineHash = [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($canonicalBaseline)).ToLowerInvariant()
$expectedBaselineHash = 'b99bf7894cf40fc108337925b562a61a1a7444ff444a97a68e6dfc8052a14b20'
if ($baselineHash -cne $expectedBaselineHash) { throw 'The baseline raw capture differs from the signed Titan parent.' }
$baselineRaw = Join-Path $StageDirectory 'baseline-raw.lua'
[IO.File]::WriteAllText($baselineRaw, $baselineText, $utf8)

$relativeOutput = '.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua'
function Invoke-ItemDBConsolidator([string]$Label, [string]$RawInput) {
    $runDirectory = Join-Path $StageDirectory $Label
    $runTools = Join-Path $runDirectory '.tools'
    $runRaw = Join-Path $runDirectory '.raw/ItemDB'
    New-Item -ItemType Directory -Path $runTools, $runRaw -Force | Out-Null
    Copy-Item -LiteralPath $RawInput -Destination (Join-Path $runRaw $rawName)
    $log = Join-Path $EvidenceDirectory "$Label.log"
    Push-Location $runTools
    try {
        & $executable *> $log
        if ($LASTEXITCODE -ne 0) { throw "Wrath ItemDB $Label consolidation failed with exit code $LASTEXITCODE. See $log." }
    } finally {
        Pop-Location
    }
    $result = Join-Path $EvidenceDirectory "$Label.lua"
    Copy-Item -LiteralPath (Join-Path $runDirectory $relativeOutput) -Destination $result
    return $result
}

$baselineOutput = Invoke-ItemDBConsolidator 'baseline' $baselineRaw
$candidateOutput = Invoke-ItemDBConsolidator 'candidate' $raw
$tracked = Join-Path (Join-Path $repositoryRoot '.contrib') $relativeOutput
$checkedInOutput = Join-Path $EvidenceDirectory 'checked-in.lua'
Copy-Item -LiteralPath $tracked -Destination $checkedInOutput
$baseline = [IO.File]::ReadAllText($baselineOutput) -split '\r?\n', 2
$candidate = [IO.File]::ReadAllText($candidateOutput) -split '\r?\n', 2
$checkedIn = [IO.File]::ReadAllText($checkedInOutput) -split '\r?\n', 2
$sameBody = $baseline.Count -eq 2 -and $candidate.Count -eq 2 -and $baseline[1] -ceq $candidate[1]
$matchesCheckedInBody = $checkedIn.Count -eq 2 -and $baseline[1] -ceq $checkedIn[1]
[ordered]@{
    baselineCommit = 'e77ccba4a5f15fa6aae67311594d34c635cfce4d'
    baselineRawBlob = '92b992de45fd3691fb220fd30c313ddd0b2c3d22'
    baselineRawCanonicalSha256 = $baselineHash
    candidateRawSha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $raw).Hash.ToLowerInvariant()
    consolidatorSha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $executable).Hash.ToLowerInvariant()
    baselineGeneratedSha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $baselineOutput).Hash.ToLowerInvariant()
    candidateGeneratedSha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $candidateOutput).Hash.ToLowerInvariant()
    checkedInGeneratedSha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $checkedInOutput).Hash.ToLowerInvariant()
    regeneratedBodiesMatch = $sameBody
    checkedInBodyMatchesBaseline = $matchesCheckedInBody
} | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $EvidenceDirectory 'consolidation-manifest.json') -Encoding utf8
if ($baseline[0] -cne '-- #if WRATH' -or $candidate[0] -cne '-- #if WRATH_CLASSIC_ITEMDB' -or !$sameBody) {
    throw 'Same-tool Wrath ItemDB regeneration must change only the preprocessor guard.'
}
if (!$matchesCheckedInBody) {
    Write-Warning 'The checked-in Wrath ItemDB body differs from the original raw capture regenerated by CI. See the staged baseline and candidate evidence.'
}
Copy-Item -LiteralPath $candidateOutput -Destination $tracked
