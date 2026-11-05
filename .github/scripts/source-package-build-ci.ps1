$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false
$source = Join-Path $env:GITHUB_WORKSPACE '.contrib/.source'
$evidence = Join-Path $env:RUNNER_TEMP 'att-source-evidence'
New-Item -ItemType Directory -Force $evidence | Out-Null
$builds = [System.Collections.Generic.List[object]]::new()
$files = [System.Collections.Generic.List[object]]::new()
$assetManifests = [System.Collections.Generic.List[object]]::new()
$failure = $null

function Invoke-Build([string] $Path, [string] $Configuration, [string] $Platform, [string] $Label) {
    $log = Join-Path $evidence "$Label.log"
    Write-Host "Building $Path / $Configuration / $Platform"
    & msbuild $Path /restore /t:Build /m:1 /v:normal "/p:Configuration=$Configuration" "/p:Platform=$Platform" 2>&1 | Tee-Object -FilePath $log
    $code = $LASTEXITCODE
    $builds.Add([pscustomobject]@{ project = $Path; configuration = $Configuration; platform = $Platform; exitCode = $code; log = "$Label.log" })
    if ($code -ne 0) { throw "Build failed: $Path / $Configuration / $Platform ($code)" }
}

function Test-RestoredFile([string] $Actual, [string] $PackagePath) {
    $expected = Join-Path $env:NUGET_PACKAGES $PackagePath
    if (!(Test-Path $Actual) -or !(Test-Path $expected)) { throw "Missing output or restored asset: $Actual / $expected" }
    $actualHash = (Get-FileHash $Actual -Algorithm SHA256).Hash
    $expectedHash = (Get-FileHash $expected -Algorithm SHA256).Hash
    $files.Add([pscustomobject]@{ output = $Actual; packageAsset = $expected; actualSha256 = $actualHash; expectedSha256 = $expectedHash })
    if ($actualHash -ne $expectedHash) { throw "Unexpected output content: $Actual" }
}

try {
    if ((Test-Path $env:NUGET_PACKAGES) -and @(Get-ChildItem -Force $env:NUGET_PACKAGES).Count -ne 0) {
        throw "Expected an empty NuGet packages folder: $env:NUGET_PACKAGES"
    }
    New-Item -ItemType Directory -Force $env:NUGET_PACKAGES | Out-Null
    $oldPackages = Join-Path $source 'packages'
    if (Test-Path $oldPackages) { Remove-Item $oldPackages -Recurse -Force }
    foreach ($name in 'NLua.dll', 'KeraLua.dll', 'lua54.dll') {
        $path = Join-Path $env:GITHUB_WORKSPACE ".contrib/.tools/$name"
        if (Test-Path $path) { Remove-Item $path -Force }
    }
    foreach ($name in 'NLua.dll', 'KeraLua.dll') {
        $path = Join-Path $source "Item Database Consolidator/bin/Debug/$name"
        if (Test-Path $path) { Remove-Item $path -Force }
    }

    # CI-only imports keep each project's outputs and intermediates separate.
    @'
<Project>
  <PropertyGroup>
    <BaseOutputPath>$(RUNNER_TEMP)\att-source-output\$(MSBuildProjectName)\</BaseOutputPath>
    <BaseIntermediateOutputPath>$(RUNNER_TEMP)\att-source-obj\$(MSBuildProjectName)\</BaseIntermediateOutputPath>
    <OutDir>$(RUNNER_TEMP)\att-source-output\$(Configuration)\$(MSBuildProjectName)\</OutDir>
  </PropertyGroup>
</Project>
'@ | Set-Content -Encoding utf8 (Join-Path $source 'Directory.Build.props')
    @'
<Project>
  <PropertyGroup>
    <OutputPath>$(OutDir)</OutputPath>
    <DocumentationFile Condition="'$(DocumentationFile)' != ''">$(OutDir)$(AssemblyName).xml</DocumentationFile>
  </PropertyGroup>
</Project>
'@ | Set-Content -Encoding utf8 (Join-Path $source 'Directory.Build.targets')

    $projects = @(
        @{ Path = 'Database/Database.csproj'; Platform = 'x64'; KeraLua = '1.2.13'; NLua = '1.5.7' },
        @{ Path = 'ATT Sync Tool/ATT Sync Tool.csproj'; Platform = 'x64'; KeraLua = '1.2.13'; NLua = '1.5.7' },
        @{ Path = 'Item Database Consolidator/Item Database Consolidator.csproj'; Platform = 'AnyCPU'; KeraLua = '1.4.11'; NLua = '1.7.9' },
        @{ Path = 'Skill Level Requirements/Skill Level Requirements.csproj'; Platform = 'AnyCPU' },
        @{ Path = 'AssetDB Builder/AssetDB Builder.csproj'; Platform = 'AnyCPU' },
        @{ Path = 'IconID Converter/IconID Converter.csproj'; Platform = 'AnyCPU' }
    )
    foreach ($configuration in 'Debug', 'Release') {
        foreach ($project in $projects) {
            $path = Join-Path $source $project.Path
            $name = [System.IO.Path]::GetFileNameWithoutExtension($project.Path)
            $label = "$configuration-$name" -replace '[^a-zA-Z0-9-]', '-'
            Invoke-Build $path $configuration $project.Platform $label
            $output = Join-Path $env:RUNNER_TEMP "att-source-output/$configuration/$name"
            if (!(Test-Path $output)) { throw "Missing isolated output directory: $output" }
            $assetsPath = Join-Path $env:RUNNER_TEMP "att-source-obj/$name/project.assets.json"
            if (!(Test-Path $assetsPath)) { throw "Missing assets manifest: $assetsPath" }
            Copy-Item $assetsPath (Join-Path $evidence "$label.assets.json")
            $assets = Get-Content -Raw $assetsPath | ConvertFrom-Json
            $libraries = @($assets.libraries.PSObject.Properties.Name)
            $assetManifests.Add([pscustomobject]@{ project = $name; configuration = $configuration; path = $assetsPath; libraries = $libraries; packageFolders = @($assets.packageFolders.PSObject.Properties.Name) })
            if ($project.KeraLua) {
                foreach ($library in "KeraLua/$($project.KeraLua)", "NLua/$($project.NLua)") {
                    if ($libraries -notcontains $library) { throw "Missing expected restored package $library in $assetsPath" }
                }
                $generatedTargets = Join-Path $env:RUNNER_TEMP "att-source-obj/$name/$([System.IO.Path]::GetFileName($project.Path)).nuget.g.targets"
                if (!(Test-Path $generatedTargets) -or !((Get-Content -Raw $generatedTargets) -match 'KeraLua\.targets')) { throw "KeraLua targets not imported: $generatedTargets" }
                Copy-Item $generatedTargets (Join-Path $evidence "$label.nuget.g.targets")
                Test-RestoredFile (Join-Path $output 'KeraLua.dll') "keralua/$($project.KeraLua)/lib/net46/KeraLua.dll"
                Test-RestoredFile (Join-Path $output 'NLua.dll') "nlua/$($project.NLua)/lib/net46/NLua.dll"
                Test-RestoredFile (Join-Path $output 'lua54.dll') "keralua/$($project.KeraLua)/runtimes/win-x64/native/lua54.dll"
                if ($name -eq 'Item Database Consolidator' -and $configuration -eq 'Debug') {
                    Test-RestoredFile (Join-Path $output 'x86/lua54.dll') "keralua/$($project.KeraLua)/runtimes/win-x86/native/lua54.dll"
                    Test-RestoredFile (Join-Path $output 'x64/lua54.dll') "keralua/$($project.KeraLua)/runtimes/win-x64/native/lua54.dll"
                }
            }
        }
    }
    foreach ($configuration in 'Debug', 'Release', 'Classic Era', 'Classic TBC', 'Classic Wrath', 'Classic', 'Retail') {
        $label = "solution-$configuration" -replace '[^a-zA-Z0-9-]', '-'
        Invoke-Build (Join-Path $source 'All The Tools.sln') $configuration 'x64' $label
    }
    'All six projects built in Debug and Release; all seven solution configurations built with x64 solution mapping.' >> $env:GITHUB_STEP_SUMMARY
} catch {
    $failure = $_.ToString()
    throw
} finally {
    [pscustomobject]@{
        status = if ($failure) { 'failed' } else { 'passed' }
        error = $failure
        builds = @($builds)
        packageManifests = @($assetManifests)
        outputHashes = @($files)
    } | ConvertTo-Json -Depth 10 | Set-Content -Encoding utf8 (Join-Path $evidence 'result.json')
}
