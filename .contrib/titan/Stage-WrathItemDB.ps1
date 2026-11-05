param([Parameter(Mandatory)][string]$StageDirectory)

$ErrorActionPreference = 'Stop'
$repositoryRoot = (Resolve-Path (Join-Path $PSScriptRoot '../..')).Path
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
$msbuild = & $vswhere -latest -requires Microsoft.Component.MSBuild -find 'MSBuild\**\Bin\amd64\MSBuild.exe' | Select-Object -First 1
if (-not $msbuild) { throw '64-bit MSBuild was not found.' }
if (Test-Path -LiteralPath $StageDirectory) { throw "ItemDB stage already exists: $StageDirectory" }

$stageTools = Join-Path $StageDirectory '.tools'
$stageRaw = Join-Path $StageDirectory '.raw/ItemDB'
New-Item -ItemType Directory -Path $stageTools, $stageRaw -Force | Out-Null
$project = Join-Path $repositoryRoot '.contrib/.source/Item Database Consolidator/Item Database Consolidator.csproj'
$outputPath = $stageTools.Replace('\', '/').TrimEnd('/') + '/'
& $msbuild $project /t:Rebuild /p:Configuration=Release /p:Platform=AnyCPU /p:PlatformTarget=x64 /p:Prefer32Bit=false "/p:OutDir=$outputPath" "/p:OutputPath=$outputPath" /verbosity:minimal /nologo
if ($LASTEXITCODE -ne 0) { throw "ItemDB Consolidator build failed with exit code $LASTEXITCODE." }

Copy-Item -LiteralPath (Join-Path $repositoryRoot '.contrib/.tools/lua54.dll') -Destination $stageTools
$raw = Join-Path $repositoryRoot '.contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua'
Copy-Item -LiteralPath $raw -Destination $stageRaw
Push-Location $stageTools
try {
    & '.\Item Database Consolidator.exe'
    if ($LASTEXITCODE -ne 0) { throw "Wrath ItemDB consolidation failed with exit code $LASTEXITCODE." }
} finally {
    Pop-Location
}

$relativeOutput = '.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua'
$generated = Join-Path $StageDirectory $relativeOutput
$tracked = Join-Path (Join-Path $repositoryRoot '.contrib') $relativeOutput
$new = [IO.File]::ReadAllText($generated) -split '\r?\n', 2
$old = [IO.File]::ReadAllText($tracked) -split '\r?\n', 2
if ($new[0] -cne '-- #if WRATH_CLASSIC_ITEMDB' -or $old[1] -cne $new[1]) {
    throw 'Wrath ItemDB regeneration must change only the preprocessor guard.'
}
Copy-Item -LiteralPath $generated -Destination $tracked
Get-FileHash -Algorithm SHA256 -LiteralPath $generated | Format-Table -HideTableHeaders
