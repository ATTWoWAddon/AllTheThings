param([Parameter(Mandatory)][string]$ArtifactDirectory)

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path $PSScriptRoot -Parent
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
$msbuild = & $vswhere -latest -requires Microsoft.Component.MSBuild -find 'MSBuild\**\Bin\amd64\MSBuild.exe' | Select-Object -First 1
if (-not $msbuild) { throw '64-bit MSBuild was not found.' }
if (Test-Path -LiteralPath $ArtifactDirectory) { throw "Parser artifact directory already exists: $ArtifactDirectory" }

$project = Join-Path $repositoryRoot '.contrib/src/Parser/Parser.csproj'
$outputPath = $ArtifactDirectory.Replace('\', '/').TrimEnd('/') + '/'
& $msbuild $project /restore /t:Rebuild /p:Configuration=Release /p:Platform=x64 "/p:OutDir=$outputPath" "/p:OutputPath=$outputPath" /verbosity:minimal /nologo
if ($LASTEXITCODE -ne 0) { throw "Parser build failed with exit code $LASTEXITCODE." }

$tools = Join-Path $PSScriptRoot '.tools'
foreach ($name in 'Parser.exe', 'Parser.exe.config', 'Csv.dll', 'KeraLua.dll', 'NLua.dll', 'lua54.dll') {
    $path = Join-Path $ArtifactDirectory $name
    if (-not (Test-Path -LiteralPath $path -PathType Leaf) -or (Get-Item -LiteralPath $path).Length -eq 0) {
        throw "Missing or empty Parser runtime file: $name"
    }
}
foreach ($entry in Get-ChildItem -LiteralPath $ArtifactDirectory) {
    Copy-Item -LiteralPath $entry.FullName -Destination $tools -Recurse -Force
}
$files = foreach ($file in Get-ChildItem -LiteralPath $ArtifactDirectory -File -Recurse | Sort-Object FullName) {
    [ordered]@{
        path = [IO.Path]::GetRelativePath($ArtifactDirectory, $file.FullName).Replace('\', '/')
        sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $file.FullName).Hash.ToLowerInvariant()
    }
}
[ordered]@{
    repository = $env:GITHUB_REPOSITORY
    commit = $env:GITHUB_SHA
    runId = $env:GITHUB_RUN_ID
    runAttempt = $env:GITHUB_RUN_ATTEMPT
    configuration = 'Release'
    platform = 'x64'
    files = @($files)
} | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath (Join-Path $ArtifactDirectory 'build-manifest.json') -Encoding utf8
