param(
    [string]$OutputRoot = (Join-Path $PSScriptRoot '..\.builds\folder-publish')
)

$ErrorActionPreference = 'Stop'
if (-not [System.IO.Path]::IsPathRooted($OutputRoot)) {
    $OutputRoot = Join-Path (Get-Location).ProviderPath $OutputRoot
}
$OutputRoot = [System.IO.Path]::GetFullPath($OutputRoot)
if (Test-Path -LiteralPath $OutputRoot) {
    if (-not (Test-Path -LiteralPath $OutputRoot -PathType Container) -or
        @(Get-ChildItem -LiteralPath $OutputRoot -Force).Count -ne 0) {
        throw "The output directory must be empty or absent: $OutputRoot"
    }
}

$projects = @(
    @{ Name = 'Parser'; Path = 'Parser\Parser.csproj'; Platform = 'x64'; Runtime = 'win-x64' }
    @{ Name = 'CSVCleaner'; Path = 'CSVCleaner\CSVCleaner.csproj'; Platform = 'x64'; Runtime = 'win-x64' }
    @{ Name = 'Harvester'; Path = 'Blizzard API Harvester\Blizzard API Harvester.csproj'; Platform = 'AnyCPU' }
    @{ Name = 'ClassicItemDetector'; Path = 'Classic Item Detector\Classic Item Detector.csproj'; Platform = 'AnyCPU' }
    @{ Name = 'ItemDBCompareTool'; Path = 'Item DB Compare Tool\Item DB Compare Tool.csproj'; Platform = 'AnyCPU' }
)

foreach ($project in $projects) {
    $build = (Join-Path $OutputRoot "build\$($project.Name)").Replace('\', '/') + '/'
    $obj = (Join-Path $OutputRoot "obj\$($project.Name)").Replace('\', '/') + '/'
    $publish = Join-Path $OutputRoot "publish\$($project.Name)"
    $publishArgs = @(
        'publish', (Join-Path $PSScriptRoot $project.Path),
        '--configuration', 'Release', '--output', $publish,
        "-p:Platform=$($project.Platform)",
        "-p:BaseOutputPath=$build", "-p:OutputPath=$build",
        "-p:BaseIntermediateOutputPath=$obj", "-p:MSBuildProjectExtensionsPath=$obj",
        '-p:CopyOutputSymbolsToPublishDirectory=false', '-p:PublishDocumentationFile=false'
    )
    if ($project.Runtime) {
        $publishArgs += @('--runtime', $project.Runtime)
    }
    if ($project.Name -eq 'CSVCleaner') {
        $publishArgs += @('--self-contained', 'false')
    }

    Write-Host "Publishing $($project.Name) to $publish"
    & dotnet @publishArgs
    if ($LASTEXITCODE -ne 0) {
        throw "Publishing $($project.Name) failed with exit code $LASTEXITCODE."
    }
}

Write-Host "Published folders: $(Join-Path $OutputRoot 'publish')"
