$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false
$env:NUGET_PACKAGES = Join-Path $env:RUNNER_TEMP 'att-source-nuget'
$env:NUGET_HTTP_CACHE_PATH = Join-Path $env:RUNNER_TEMP 'att-source-nuget-http'
$source = Join-Path $env:GITHUB_WORKSPACE '.contrib/.source'
$evidence = Join-Path $env:RUNNER_TEMP 'att-source-evidence'
New-Item -ItemType Directory -Force $evidence | Out-Null
$builds = [System.Collections.Generic.List[object]]::new()
$files = [System.Collections.Generic.List[object]]::new()
$assetManifests = [System.Collections.Generic.List[object]]::new()
$runtimeCoverage = $null
$failure = $null

function Invoke-Build([string] $Path, [string] $Configuration, [string] $Platform, [string] $Label) {
    $log = Join-Path $evidence "$Label.log"
    Write-Host "Building $Path / $Configuration / $Platform"
    & msbuild $Path /restore /t:Build /m:1 /v:normal "/p:Configuration=$Configuration" "/p:Platform=$Platform" 2>&1 | Tee-Object -FilePath $log
    $code = $LASTEXITCODE
    $builds.Add([pscustomobject]@{ project = $Path; configuration = $Configuration; platform = $Platform; exitCode = $code; log = "$Label.log" })
    if ($code -ne 0) { throw "Build failed: $Path / $Configuration / $Platform ($code)" }
}

function Test-MatchedFile([string] $Actual, [string] $Expected, [string] $Origin) {
    $expected = $Expected
    if (!(Test-Path $Actual) -or !(Test-Path $expected)) { throw "Missing output or restored asset: $Actual / $expected" }
    $actualHash = (Get-FileHash $Actual -Algorithm SHA256).Hash
    $expectedHash = (Get-FileHash $expected -Algorithm SHA256).Hash
    $files.Add([pscustomobject]@{ output = $Actual; packageAsset = $expected; origin = $Origin; actualSha256 = $actualHash; expectedSha256 = $expectedHash })
    if ($actualHash -ne $expectedHash) { throw "Unexpected output content: $Actual" }
}
function Test-RestoredFile([string] $Actual, [string] $PackagePath) {
    Test-MatchedFile $Actual (Join-Path $env:NUGET_PACKAGES $PackagePath) 'NuGet restore'
}

try {
    foreach ($cache in @($env:NUGET_PACKAGES, $env:NUGET_HTTP_CACHE_PATH)) {
        if ((Test-Path $cache) -and @(Get-ChildItem -Force $cache).Count -ne 0) {
            throw "Expected an empty NuGet cache folder: $cache"
        }
        New-Item -ItemType Directory -Force $cache | Out-Null
    }
    $repositoryTools = Join-Path $env:GITHUB_WORKSPACE '.contrib/.tools'
    $sourceManifest = Get-ChildItem -LiteralPath $source -File -Recurse -Force | Sort-Object FullName | ForEach-Object {
        $relative = [System.IO.Path]::GetRelativePath($source, $_.FullName)
        "$((Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash)  $relative"
    }
    $sourceManifest | Set-Content -Encoding utf8 (Join-Path $evidence 'source-SHA256SUMS.txt')
    # Preserve the original shared DLLs only as hash oracles, then remove them
    # from the runner checkout so no project can resolve a stale HintPath.
    $originalLua = Join-Path $env:RUNNER_TEMP 'att-original-lua'
    New-Item -ItemType Directory -Force $originalLua | Out-Null
    foreach ($name in 'NLua.dll', 'KeraLua.dll', 'lua54.dll') {
        $path = Join-Path $repositoryTools $name
        if (!(Test-Path -LiteralPath $path -PathType Leaf)) { throw "Missing original shared library: $path" }
        Copy-Item -LiteralPath $path -Destination (Join-Path $originalLua $name)
        Remove-Item -LiteralPath $path -Force
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
    <UseCommonOutputDirectory Condition="'$(UsingMicrosoftNETSdk)' == 'true'">false</UseCommonOutputDirectory>
  </PropertyGroup>
</Project>
'@ | Set-Content -Encoding utf8 (Join-Path $source 'Directory.Build.targets')

    $projects = @(
        @{ Path = 'Database/Database.csproj'; Platform = 'x64'; Legacy = $true },
        @{ Path = 'ATT Sync Tool/ATT Sync Tool.csproj'; Platform = 'x64'; Legacy = $true },
        @{ Path = 'Item Database Consolidator/Item Database Consolidator.csproj'; Platform = 'AnyCPU'; Legacy = $true },
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
            if ($project.Legacy) {
                foreach ($library in 'KeraLua/1.4.11', 'NLua/1.7.9') {
                    if ($libraries -notcontains $library) { throw "Missing expected restored package $library in $assetsPath" }
                }
                $generatedTargets = Join-Path $env:RUNNER_TEMP "att-source-obj/$name/$([System.IO.Path]::GetFileName($project.Path)).nuget.g.targets"
                if (!(Test-Path $generatedTargets) -or !((Get-Content -Raw $generatedTargets) -match 'KeraLua\.targets')) { throw "KeraLua targets not imported: $generatedTargets" }
                Copy-Item $generatedTargets (Join-Path $evidence "$label.nuget.g.targets")
                Test-RestoredFile (Join-Path $output 'KeraLua.dll') 'keralua/1.4.11/lib/net46/KeraLua.dll'
                Test-RestoredFile (Join-Path $output 'NLua.dll') 'nlua/1.7.9/lib/net46/NLua.dll'
                Test-RestoredFile (Join-Path $output 'lua54.dll') 'keralua/1.4.11/runtimes/win-x64/native/lua54.dll'
                if ($name -eq 'Item Database Consolidator' -and $configuration -eq 'Debug') {
                    Test-RestoredFile (Join-Path $output 'x86/lua54.dll') 'keralua/1.4.11/runtimes/win-x86/native/lua54.dll'
                    Test-RestoredFile (Join-Path $output 'x64/lua54.dll') 'keralua/1.4.11/runtimes/win-x64/native/lua54.dll'
                }
            }
        }
    }
    foreach ($configuration in 'Debug', 'Release', 'Classic Era', 'Classic TBC', 'Classic Wrath', 'Classic', 'Retail') {
        $label = "solution-$configuration" -replace '[^a-zA-Z0-9-]', '-'
        Invoke-Build (Join-Path $source 'All The Tools.sln') $configuration 'x64' $label
    }

    # Verify the final Release folders, including dependencies copied after solution builds.
    $release = Join-Path $env:RUNNER_TEMP 'att-source-output/Release'
    $required = @(
        'Database/Database.dll',
        'ATT Sync Tool/ATT Sync Tool.exe', 'ATT Sync Tool/ATT Sync Tool.exe.config', 'ATT Sync Tool/Database.dll',
        'Item Database Consolidator/Item Database Consolidator.exe', 'Item Database Consolidator/Item Database Consolidator.exe.config'
    )
    foreach ($name in 'Skill Level Requirements', 'AssetDB Builder', 'IconID Converter') {
        foreach ($extension in '.exe', '.dll', '.deps.json', '.runtimeconfig.json') {
            $required += "$name/$name$extension"
        }
    }
    foreach ($relativePath in $required) {
        $path = Join-Path $release $relativePath
        if (!(Test-Path -LiteralPath $path -PathType Leaf)) { throw "Missing Release file: $path" }
    }
    $database = Join-Path $release 'Database/Database.dll'
    $syncDatabase = Join-Path $release 'ATT Sync Tool/Database.dll'
    if ((Get-FileHash $database -Algorithm SHA256).Hash -ne (Get-FileHash $syncDatabase -Algorithm SHA256).Hash) {
        throw 'The Database library in ATT Sync Tool differs from the Release Database output.'
    }
    foreach ($project in $projects | Where-Object { $_.Legacy }) {
        $name = [System.IO.Path]::GetFileNameWithoutExtension($project.Path)
        $output = Join-Path $release $name
        Test-RestoredFile (Join-Path $output 'KeraLua.dll') 'keralua/1.4.11/lib/net46/KeraLua.dll'
        Test-RestoredFile (Join-Path $output 'NLua.dll') 'nlua/1.7.9/lib/net46/NLua.dll'
        Test-RestoredFile (Join-Path $output 'lua54.dll') 'keralua/1.4.11/runtimes/win-x64/native/lua54.dll'
    }
    Test-RestoredFile (Join-Path $release 'Skill Level Requirements/Newtonsoft.Json.dll') 'newtonsoft.json/13.0.3/lib/net6.0/Newtonsoft.Json.dll'

    [xml] $syncConfig = Get-Content -Raw (Join-Path $release 'ATT Sync Tool/ATT Sync Tool.exe.config')
    $namespace = [System.Xml.XmlNamespaceManager]::new($syncConfig.NameTable)
    $namespace.AddNamespace('asm', 'urn:schemas-microsoft-com:asm.v1')
    $redirect = $syncConfig.SelectSingleNode('//asm:dependentAssembly[asm:assemblyIdentity/@name="KeraLua"]/asm:bindingRedirect', $namespace)
    if ($null -eq $redirect -or $redirect.GetAttribute('newVersion') -ne '1.4.11.0') {
        throw 'The generated Sync EXE configuration does not redirect KeraLua to 1.4.11.0.'
    }
    Copy-Item (Join-Path $release 'ATT Sync Tool/ATT Sync Tool.exe.config') (Join-Path $evidence 'sync-generated.exe.config')

    # Ensure Database was actually recompiled to NLua's new optional-bool constructor.
    $stream = [System.IO.File]::OpenRead($database)
    try {
        $pe = [System.Reflection.PortableExecutable.PEReader]::new($stream)
        try {
            $metadata = [System.Reflection.Metadata.PEReaderExtensions]::GetMetadataReader($pe)
            $constructors = foreach ($handle in $metadata.MemberReferences) {
                $member = $metadata.GetMemberReference($handle)
                if ($member.Parent.Kind -ne [System.Reflection.Metadata.HandleKind]::TypeReference) { continue }
                $type = $metadata.GetTypeReference([System.Reflection.Metadata.TypeReferenceHandle]::op_Explicit($member.Parent))
                if ($metadata.GetString($type.Namespace) -eq 'NLua' -and $metadata.GetString($type.Name) -eq 'Lua' -and $metadata.GetString($member.Name) -eq '.ctor') {
                    [Convert]::ToHexString($metadata.GetBlobBytes($member.Signature))
                }
            }
        } finally { $pe.Dispose() }
    } finally { $stream.Dispose() }
    if (@($constructors) -notcontains '20010102' -or @($constructors) -contains '200001') {
        throw "Unexpected NLua Lua constructor reference(s): $($constructors -join ', ')"
    }
    [pscustomobject]@{ assembly = $database; expected = '20010102'; actual = @($constructors) } |
        ConvertTo-Json -Depth 4 | Set-Content -Encoding utf8 (Join-Path $evidence 'database-nlua-constructor.json')

    # Run against isolated copies so fixtures and harnesses cannot modify the artifact.
    $runtimeRoot = Join-Path $env:RUNNER_TEMP 'att-source-runtime'
    $runtimeApps = Join-Path $runtimeRoot 'apps'
    $fixtures = Join-Path $runtimeRoot 'fixtures'
    $runtimeEvidence = Join-Path $evidence 'runtime'
    New-Item -ItemType Directory -Force $runtimeApps, $fixtures, $runtimeEvidence | Out-Null
    Copy-Item -Path (Join-Path $release '*') -Destination $runtimeApps -Recurse -Force
    foreach ($relativePath in @(
        'ATT Sync Tool/NLua.dll', 'ATT Sync Tool/KeraLua.dll', 'ATT Sync Tool/lua54.dll',
        'Item Database Consolidator/NLua.dll', 'Item Database Consolidator/KeraLua.dll', 'Item Database Consolidator/lua54.dll',
        'Skill Level Requirements/Newtonsoft.Json.dll'
    )) {
        $original = Join-Path $release $relativePath
        $copy = Join-Path $runtimeApps $relativePath
        if (!(Test-Path -LiteralPath $copy -PathType Leaf) -or
            (Get-FileHash -LiteralPath $original -Algorithm SHA256).Hash -ne (Get-FileHash -LiteralPath $copy -Algorithm SHA256).Hash) {
            throw "Runtime fixture dependency differs from Release output: $relativePath"
        }
    }
    & (Join-Path $PSScriptRoot 'source-legacy-runtime-ci.ps1') -Release $runtimeApps -FixtureRoot $fixtures -Evidence $runtimeEvidence
    & (Join-Path $PSScriptRoot 'source-net10-runtime-ci.ps1') -Release $runtimeApps -FixtureRoot $fixtures -Evidence $runtimeEvidence

    # Recreate the shared .tools layout in a separate synthetic repository.
    # Reject mismatching duplicate names instead of silently replacing files.
    $sharedFixtures = Join-Path $runtimeRoot 'shared-fixtures'
    $sharedTools = Join-Path $sharedFixtures 'item-repo/.contrib/.tools'
    $sharedEvidence = Join-Path $runtimeEvidence 'shared'
    New-Item -ItemType Directory -Force $sharedTools, $sharedEvidence | Out-Null
    foreach ($folder in Get-ChildItem -LiteralPath $release -Directory) {
        foreach ($file in Get-ChildItem -LiteralPath $folder.FullName -File -Recurse) {
            if ($file.Extension -in '.pdb', '.xml') { continue }
            $relative = [System.IO.Path]::GetRelativePath($folder.FullName, $file.FullName)
            $destination = Join-Path $sharedTools $relative
            if (Test-Path -LiteralPath $destination) {
                if ((Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash -ne (Get-FileHash -LiteralPath $destination -Algorithm SHA256).Hash) {
                    throw "Conflicting files in shared .tools layout: $relative"
                }
            } else {
                New-Item -ItemType Directory -Force (Split-Path $destination) | Out-Null
                Copy-Item -LiteralPath $file.FullName -Destination $destination
            }
        }
    }
    foreach ($name in 'Parser.exe', 'Parser.exe.config', 'Csv.dll') {
        $original = Join-Path $repositoryTools $name
        $destination = Join-Path $sharedTools $name
        if (!(Test-Path -LiteralPath $original -PathType Leaf) -or (Test-Path -LiteralPath $destination)) { throw "Missing or conflicting Parser file: $name" }
        Copy-Item -LiteralPath $original -Destination $destination
        Test-MatchedFile $destination $original 'repository Parser file'
    }
    foreach ($name in 'NLua.dll', 'KeraLua.dll', 'lua54.dll') {
        Test-MatchedFile (Join-Path $sharedTools $name) (Join-Path $originalLua $name) 'original repository shared .tools'
    }
    & (Join-Path $PSScriptRoot 'source-legacy-runtime-ci.ps1') -Release $runtimeApps -FixtureRoot $sharedFixtures -Evidence $sharedEvidence -SharedTools $sharedTools
    & (Join-Path $PSScriptRoot 'source-net10-runtime-ci.ps1') -Release $runtimeApps -FixtureRoot $sharedFixtures -Evidence $sharedEvidence -SharedTools $sharedTools
    $runtimeCoverage = [pscustomobject]@{
        item = 'Actual EXE fixture output and same application entry point in a module-path harness.'
        sync = 'Built EXE assembly: MainForm initialization, Shown event, message loop, and clean close in a harness.'
        database = 'Built Database.dll: synthetic SavedVariables parse and rewrite, with loaded Lua module path and hash.'
        asset = 'Actual EXE with synthetic JSON input and checked output.'
        icon = 'Actual EXE with local synthetic CSV and checked file replacement.'
        skill = 'Built DLL Helper.Parse with synthetic content and Newtonsoft path/hash; EXE and live Wowhead were not tested.'
        shared = 'Fixtures also run with the built tools and existing Parser in one synthetic .tools directory; Parser Lua initialization only, not a full parse.'
        lua = 'Application integration uses bundled Lua 5.4.9; input syntax is Lua 5.1 compatible.'
    }

    @'
ATT source tools - Release build

Each tool is in its own folder with its build dependencies. Database is a
library; ATT Sync Tool also has its own copy of Database.dll. The tools use
the same Lua libraries, acquired from NuGet during the build.

ATT Sync Tool and Item Database Consolidator target .NET Framework 4.7.2.
Skill Level Requirements, AssetDB Builder, and IconID Converter target .NET 10
and need the .NET 10 runtime installed. These are Windows x64 build outputs.

Several tools use paths relative to the current working directory and require
the ATT repository and its input data; those are not included in this archive.
Use the repository's .contrib/.tools directory as the working directory when
running tools that expect it, while keeping the executable and dependencies
in their extracted folder.
IconID Converter scans and may modify files under the repository.

Offline synthetic fixtures ran the Item Database Consolidator, AssetDB Builder,
and IconID Converter executables. A harness checked the Sync form initialization
and Database saved-variable parsing. Skill Level Requirements was checked at its
parsing function using synthetic content; its executable and live Wowhead access
were not tested. These checks do not replace testing with actual game data.
The same fixtures were also checked in a synthetic shared .tools layout with
the existing Parser; only Parser Lua initialization was checked, not a parse.
'@ | Set-Content -Encoding utf8 (Join-Path $release 'README.txt')
    $manifest = Get-ChildItem -LiteralPath $release -File -Recurse | Sort-Object FullName | ForEach-Object {
        $relativePath = [System.IO.Path]::GetRelativePath($release, $_.FullName)
        "$((Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash)  $relativePath"
    }
    $manifest | Set-Content -Encoding utf8 (Join-Path $release 'SHA256SUMS.txt')
    Copy-Item (Join-Path $release 'SHA256SUMS.txt') (Join-Path $evidence 'release-SHA256SUMS.txt')
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
        runtimeCoverage = $runtimeCoverage
    } | ConvertTo-Json -Depth 10 | Set-Content -Encoding utf8 (Join-Path $evidence 'result.json')
}
