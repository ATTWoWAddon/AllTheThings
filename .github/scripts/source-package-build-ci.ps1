$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false
$env:NUGET_PACKAGES = Join-Path $env:RUNNER_TEMP 'att-source-nuget'
$env:NUGET_HTTP_CACHE_PATH = Join-Path $env:RUNNER_TEMP 'att-source-nuget-http'
$source = Join-Path $env:GITHUB_WORKSPACE '.contrib/.source'
$src = Join-Path $env:GITHUB_WORKSPACE '.contrib/src'
$evidence = Join-Path $env:RUNNER_TEMP 'att-source-evidence'
New-Item -ItemType Directory -Force $evidence | Out-Null
$builds = [System.Collections.Generic.List[object]]::new()
$files = [System.Collections.Generic.List[object]]::new()
$assetManifests = [System.Collections.Generic.List[object]]::new()
$frameworkEvidence = [System.Collections.Generic.List[object]]::new()
$frameworkExpectations = @{
    'ATT Sync Tool' = 'v4.8'
    'Database' = 'v4.8'
    'Item Database Consolidator' = 'v4.8'
    'Parser' = 'v4.8'
    'Classic Item Detector' = 'v4.8'
    'Blizzard API Harvester' = 'v4.8'
    'Item DB Compare Tool' = 'v4.8'
}
$installedFrameworkRelease = $null
$databaseContractMatched = $false
$syncContractMatched = $false
$itemContractMatched = $false
$architectureEvidence = [System.Collections.Generic.List[object]]::new()
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
function Test-FrameworkTarget([string] $Name, [string] $Output, [string] $Configuration, [string] $Phase) {
    $version = $frameworkExpectations[$Name]
    $assemblyName = if ($Name -eq 'Database') { 'Database.dll' } else { "$Name.exe" }
    $path = Join-Path $Output $assemblyName
    $stream = [System.IO.File]::OpenRead($path)
    try {
        $pe = [System.Reflection.PortableExecutable.PEReader]::new($stream)
        try {
            if ($Name -in @('Database', 'ATT Sync Tool') -and $pe.PEHeaders.CoffHeader.Machine -ne [System.Reflection.PortableExecutable.Machine]::Amd64) {
                throw "$Name must remain x64: $path"
            }
            $metadata = [System.Reflection.Metadata.PEReaderExtensions]::GetMetadataReader($pe)
            $targets = @(
                foreach ($handle in $metadata.GetAssemblyDefinition().GetCustomAttributes()) {
                    $attribute = $metadata.GetCustomAttribute($handle)
                    if ($attribute.Constructor.Kind -ne [System.Reflection.Metadata.HandleKind]::MemberReference) { continue }
                    $ctor = $metadata.GetMemberReference([System.Reflection.Metadata.MemberReferenceHandle]::op_Explicit($attribute.Constructor))
                    if ($ctor.Parent.Kind -ne [System.Reflection.Metadata.HandleKind]::TypeReference) { continue }
                    $type = $metadata.GetTypeReference([System.Reflection.Metadata.TypeReferenceHandle]::op_Explicit($ctor.Parent))
                    if ($metadata.GetString($type.Namespace) -eq 'System.Runtime.Versioning' -and $metadata.GetString($type.Name) -eq 'TargetFrameworkAttribute') {
                        $reader = $metadata.GetBlobReader($attribute.Value)
                        if ($reader.ReadUInt16() -ne 1) { throw "Invalid framework attribute: $path" }
                        $reader.ReadSerializedString()
                    }
                }
            )
        } finally { $pe.Dispose() }
    } finally { $stream.Dispose() }
    $expected = ".NETFramework,Version=$version"
    if ($targets.Count -ne 1 -or $targets[0] -cne $expected) { throw "Unexpected target in $path; expected $expected, found $($targets -join ', ')" }
    $sku = $null
    if ($Name -in @('ATT Sync Tool', 'Item Database Consolidator')) {
        $configPath = "$path.config"
        [xml] $config = Get-Content -Raw -LiteralPath $configPath
        $runtime = @($config.SelectNodes('/configuration/startup/supportedRuntime') | Where-Object { $_.GetAttribute('version') -eq 'v4.0' })
        if ($runtime.Count -ne 1 -or $runtime[0].GetAttribute('sku') -cne $expected) { throw "Unexpected runtime SKU in $configPath; expected $expected" }
        $sku = $runtime[0].GetAttribute('sku')
    }
    $frameworkEvidence.Add([pscustomobject]@{ project = $Name; configuration = $Configuration; phase = $Phase; path = $path; target = $targets[0]; expected = $expected; executableSku = $sku })
}
function Test-PEArchitecture([string] $Path, [string] $Name, [string] $Configuration, [string] $Phase, [bool] $Managed) {
    $stream = [System.IO.File]::OpenRead($Path)
    try {
        $pe = [System.Reflection.PortableExecutable.PEReader]::new($stream)
        try {
            $machine = $pe.PEHeaders.CoffHeader.Machine
            if ($machine -ne [System.Reflection.PortableExecutable.Machine]::Amd64) { throw "Expected x64 PE: $Path ($machine)" }
            $flags = $null
            if ($Managed) {
                if ($null -eq $pe.PEHeaders.CorHeader) { throw "Missing managed PE header: $Path" }
                $flags = $pe.PEHeaders.CorHeader.Flags
                $ilOnly = [System.Reflection.PortableExecutable.CorFlags]::ILOnly
                $no32Bit = [System.Reflection.PortableExecutable.CorFlags]::Requires32Bit -bor [System.Reflection.PortableExecutable.CorFlags]::Prefers32Bit
                if (($flags -band $ilOnly) -eq 0 -or ($flags -band $no32Bit) -ne 0) { throw "Unexpected managed PE flags: $Path ($flags)" }
            }
            $architectureEvidence.Add([pscustomobject]@{ project = $Name; configuration = $Configuration; phase = $Phase; path = $Path; machine = $machine.ToString(); corFlags = if ($null -eq $flags) { $null } else { $flags.ToString() }; sha256 = (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash })
        } finally { $pe.Dispose() }
    } finally { $stream.Dispose() }
}
function Test-ProjectPEs([string] $Name, [string] $Output, [string] $Configuration, [string] $Phase, [bool] $Legacy) {
    if ($Legacy) {
        $extension = if ($Name -eq 'Database') { '.dll' } else { '.exe' }
        Test-PEArchitecture (Join-Path $Output "$Name$extension") $Name $Configuration $Phase $true
    } else {
        Test-PEArchitecture (Join-Path $Output "$Name.dll") $Name $Configuration $Phase $true
        Test-PEArchitecture (Join-Path $Output "$Name.exe") $Name $Configuration $Phase $false
    }
}
# Pure evaluation only; invoke before CI injects Directory.Build.props/targets.
# This checks the direct reference declaration and separately evaluates Database
# with AnyCPU. It does not execute AssignProjectConfiguration or build a graph.
function Test-SourceProjectEvaluation([hashtable] $ProjectCase) {
    $project = Join-Path $source $ProjectCase.Path
    $expectedCompile = @($ProjectCase.Compile | Sort-Object)
    $expectedResources = @($ProjectCase.Resources | Sort-Object)
    $evaluations = [System.Collections.Generic.List[object]]::new()
    foreach ($configCase in $ProjectCase.Configs) {
        foreach ($platformCase in @('default', 'x64', 'AnyCPU')) {
            $config = if ($configCase.Name -eq 'default') { 'Debug' } else { $configCase.Name }
            $expectedPlatform = if ($platformCase -eq 'default') { 'x64' } else { $platformCase }
            $expectedOutput = if ($ProjectCase.Name -in @('Database', 'ATT Sync Tool')) { $configCase.Output.Replace('bin\x64\', ('bin\' + $expectedPlatform + '\')) } else { $configCase.Output }
            $arguments = @($project, '-nologo', '-getProperty:Configuration,Platforms,Platform,PlatformTarget,OutputPath,Optimize,OutputType,UseWindowsForms,ApplicationIcon,AssemblyName,RootNamespace,TargetFramework,GenerateAssemblyInfo,GenerateDocumentationFile,UseCommonOutputDirectory,AppendTargetFrameworkToOutputPath,AppendRuntimeIdentifierToOutputPath', '-getItem:Compile,EmbeddedResource,ProjectReference')
            if ($configCase.Name -ne 'default') { $arguments += "/p:Configuration=$config" }
            if ($platformCase -ne 'default') { $arguments += "/p:Platform=$platformCase" }
            $json = (& msbuild @arguments | Out-String)
            if ($LASTEXITCODE -ne 0) { throw "Evaluation failed: $($ProjectCase.Name) / $($configCase.Name) / $platformCase" }
            $e = $json | ConvertFrom-Json
            $p = $e.Properties
            $label = "$($ProjectCase.Name)-$($configCase.Name)-$platformCase" -replace '[^A-Za-z0-9._-]', '-'
            $json | Set-Content -Encoding utf8 (Join-Path $evidence "platform-evaluation-$label.json")
            if ($p.Configuration -ne $config -or $p.Platforms -ne 'x64' -or $p.Platform -ne $expectedPlatform -or $p.PlatformTarget -ne $expectedPlatform -or
                $p.OutputPath.TrimEnd([char[]] '\/') -ne $expectedOutput.TrimEnd([char[]] '\/') -or
                $p.Optimize -ne $configCase.Optimize -or $p.OutputType -ne $ProjectCase.OutputType -or
                $p.AssemblyName -ne $ProjectCase.Name -or $p.RootNamespace -ne $ProjectCase.Namespace -or
                $p.TargetFramework -ne $ProjectCase.Framework) {
                throw "Unexpected settings: $($ProjectCase.Name) / $($configCase.Name) / $platformCase"
            }
            if ($ProjectCase.Framework -eq 'net48' -and $p.GenerateAssemblyInfo -ne 'false') { throw "Unexpected AssemblyInfo setting: $label" }
            if ($ProjectCase.ContainsKey('Docs') -and $p.GenerateDocumentationFile -ne $configCase.Docs) { throw "Unexpected Database docs setting: $label" }
            if ($ProjectCase.ContainsKey('Icon') -and $p.ApplicationIcon -ne $ProjectCase.Icon) { throw "Unexpected icon: $label" }
            if ($ProjectCase.Name -eq 'ATT Sync Tool' -and $p.UseWindowsForms -ne 'true') { throw "WinForms is disabled: $label" }
            if ($ProjectCase.Framework -eq 'net10.0' -and ($p.UseCommonOutputDirectory -ne 'true' -or $p.AppendTargetFrameworkToOutputPath -ne 'false' -or $p.AppendRuntimeIdentifierToOutputPath -ne 'false')) { throw "Unexpected .NET 10 output settings: $label" }
            $compile = @($e.Items.Compile | ForEach-Object { $_.Identity.Replace('\', '/') } | Sort-Object)
            $resources = @($e.Items.EmbeddedResource | Where-Object { $null -ne $_ } | ForEach-Object { $_.Identity.Replace('\', '/') } | Sort-Object)
            if ((Compare-Object $expectedCompile $compile) -or $expectedResources.Count -ne $resources.Count -or ($expectedResources.Count -gt 0 -and (Compare-Object $expectedResources $resources))) { throw "Unexpected source/resource set: $label" }
            if ($ProjectCase.Name -eq 'ATT Sync Tool') {
                $references = @($e.Items.ProjectReference | Where-Object { $_.Identity.Replace('\', '/') -eq '../Database/Database.csproj' })
                if ($references.Count -ne 1 -or @($e.Items.ProjectReference).Count -ne 1) { throw "Unexpected Sync project reference: $label" }
                foreach ($key in @('SetPlatform', 'Properties', 'AdditionalProperties', 'GlobalPropertiesToRemove', 'UndefineProperties')) {
                    $entry = $references[0].PSObject.Properties[$key]
                    if ($null -ne $entry -and ![string]::IsNullOrEmpty([string] $entry.Value)) { throw "Unexpected project-reference metadata $key : $label" }
                }
            }
            $evaluations.Add([pscustomobject]@{ configuration = $config; platform = $p.Platform; platformTarget = $p.PlatformTarget; output = $p.OutputPath })
        }
    }
    [pscustomobject]@{ project = $ProjectCase.Name; compile = $expectedCompile; resources = $expectedResources; cases = $evaluations.ToArray() } |
        ConvertTo-Json -Depth 6 | Set-Content -Encoding utf8 (Join-Path $evidence "platform-evaluation-$($ProjectCase.Name)-summary.json")
}
function Test-DatabaseProjectEvaluation {
    Test-SourceProjectEvaluation @{
        Name='Database'; Path='Database/Database.csproj'; Namespace='ATT'; Framework='net48'; OutputType='Library'; Docs=$true
        Compile=@('SavedVariableAttribute.cs','SharedCollectionData.cs','CollectionState.cs','Container.cs','Database.cs','IBinaryDataFormatter.cs','MiniJSON.cs','Properties/AssemblyInfo.cs','PropertyChanged.cs','SavedVariables.cs','ATTCharacterData.cs','ATTAccountWideData.cs'); Resources=@()
        Configs=@(
            @{Name='default'; Output='bin\x64\Debug\'; Optimize='false'; Docs='false'},
            @{Name='Debug'; Output='bin\x64\Debug\'; Optimize='false'; Docs='false'},
            @{Name='Release'; Output='bin\x64\Retail\'; Optimize='true'; Docs='true'},
            @{Name='Classic Era'; Output='bin\x64\Classic Era\'; Optimize='true'; Docs='true'},
            @{Name='Classic TBC'; Output='bin\x64\Classic TBC\'; Optimize='true'; Docs='true'},
            @{Name='Classic Wrath'; Output='bin\x64\Classic Wrath\'; Optimize='true'; Docs='true'}
        )
    }
}
function Test-SyncProjectEvaluation {
    Test-SourceProjectEvaluation @{
        Name='ATT Sync Tool'; Path='ATT Sync Tool/ATT Sync Tool.csproj'; Namespace='ATT'; Framework='net48'; OutputType='WinExe'; Icon='base_72x72_Q9mPGQ.ico'
        Compile=@('MainForm.cs','MainForm.Designer.cs','Program.cs','Properties/AssemblyInfo.cs','Tracer.cs','Properties/Resources.Designer.cs','Properties/Settings.Designer.cs'); Resources=@('MainForm.resx','Properties/Resources.resx')
        Configs=@(
            @{Name='default'; Output='bin\x64\Debug\'; Optimize='false'},
            @{Name='Debug'; Output='bin\x64\Debug\'; Optimize='false'},
            @{Name='Release'; Output='..\..\.tools\'; Optimize='true'},
            @{Name='Classic Era'; Output='bin\x64\Classic Era\'; Optimize='true'},
            @{Name='Classic TBC'; Output='bin\x64\Classic TBC\'; Optimize='true'},
            @{Name='Classic Wrath'; Output='bin\x64\Classic Wrath\'; Optimize='true'}
        )
    }
}
function Test-ItemProjectEvaluation {
    Test-SourceProjectEvaluation @{
        Name='Item Database Consolidator'; Path='Item Database Consolidator/Item Database Consolidator.csproj'; Namespace='ATT'; Framework='net48'; OutputType='Exe'; Icon='att_logo_128_new_jrX_icon.ico'
        Compile=@('Program.cs','Properties/AssemblyInfo.cs'); Resources=@()
        Configs=@(
            @{Name='default'; Output='..\..\.tools\'; Optimize='false'},
            @{Name='Debug'; Output='..\..\.tools\'; Optimize='false'},
            @{Name='Release'; Output='..\..\.tools\'; Optimize='true'}
        )
    }
}
function Test-Net10ProjectEvaluation {
    foreach ($case in @(
        @{Name='Skill Level Requirements'; Namespace='ATT'; Compile=@('Helper.cs','Program.cs')},
        @{Name='AssetDB Builder'; Namespace='ATT'; Compile=@('MiniJSON.cs','Program.cs')},
        @{Name='IconID Converter'; Namespace='IconID_Converter'; Compile=@('Program.cs')}
    )) {
        Test-SourceProjectEvaluation @{
            Name=$case.Name; Path="$($case.Name)/$($case.Name).csproj"; Namespace=$case.Namespace; Framework='net10.0'; OutputType='Exe'; Icon='att_logo_128_new_jrX_icon.ico'; Compile=$case.Compile; Resources=@()
            Configs=@(
                @{Name='default'; Output='..\..\.tools\'; Optimize='false'},
                @{Name='Debug'; Output='..\..\.tools\'; Optimize='false'},
                @{Name='Release'; Output='..\..\.tools\'; Optimize='true'}
            )
        }
    }
}

function Test-SrcProjectEvaluation {
    $cases = @(
        @{ Name='Parser'; Path='Parser/Parser.csproj'; Framework='net48'; RejectsOther=$true },
        @{ Name='CSVCleaner'; Path='CSVCleaner/CSVCleaner.csproj'; Framework='net10.0'; RejectsOther=$true },
        @{ Name='Classic Item Detector'; Path='Classic Item Detector/Classic Item Detector.csproj'; Framework='net48' },
        @{ Name='Blizzard API Harvester'; Path='Blizzard API Harvester/Blizzard API Harvester.csproj'; Framework='net48' },
        @{ Name='Item DB Compare Tool'; Path='Item DB Compare Tool/Item DB Compare Tool.csproj'; Framework='net48' }
    )
    foreach ($case in $cases) {
        $configurations = @('default', 'Debug', 'Release')
        if ($case.Name -eq 'Blizzard API Harvester') { $configurations += 'Test' }
        foreach ($config in $configurations) {
            $platforms = @('default', 'x64')
            if (!$case.RejectsOther) { $platforms += 'AnyCPU' }
            foreach ($platform in $platforms) {
                $project = Join-Path $src $case.Path
                $arguments = @($project, '-nologo', '-getProperty:Configuration,Platforms,Platform,PlatformTarget,TargetFramework,OutputPath,DefineConstants,DebugType,DebugSymbols')
                if ($config -ne 'default') { $arguments += "/p:Configuration=$config" }
                if ($platform -ne 'default') { $arguments += "/p:Platform=$platform" }
                $json = (& msbuild @arguments | Out-String)
                if ($LASTEXITCODE -ne 0) { throw "src evaluation failed: $($case.Name) / $config / $platform" }
                $label = "$($case.Name)-$config-$platform" -replace '[^A-Za-z0-9._-]', '-'
                $json | Set-Content -Encoding utf8 (Join-Path $evidence "src-evaluation-$label.json")
                $properties = ($json | ConvertFrom-Json).Properties
                $expectedConfiguration = if ($config -eq 'default') { 'Debug' } else { $config }
                $expectedPlatform = if ($platform -eq 'default') { 'x64' } else { $platform }
                if ($properties.Configuration -ne $expectedConfiguration -or $properties.Platforms -ne 'x64' -or
                    $properties.Platform -ne $expectedPlatform -or $properties.PlatformTarget -ne $expectedPlatform -or
                    $properties.TargetFramework -ne $case.Framework) { throw "src platform or framework differs: $label" }
                if ($platform -eq 'AnyCPU') { continue } # Not a supported configuration; only check label/target consistency.
                $expectedOutput = switch ($case.Name) {
                    'Parser' { '..\..\.tools\' }
                    'CSVCleaner' { if ($expectedConfiguration -eq 'Release') { '..\..\.tools\' } else { '..\..\.tools\x64\Debug\net10.0\' } }
                    'Classic Item Detector' { "bin\$expectedConfiguration\" }
                    'Blizzard API Harvester' { if ($expectedConfiguration -eq 'Test') { 'bin\Test\' } else { '..\..\Harvesters\' } }
                    'Item DB Compare Tool' { '..\..\Harvesters\DBs\' }
                }
                if ($properties.OutputPath.TrimEnd([char[]] '\/') -ne $expectedOutput.TrimEnd([char[]] '\/')) { throw "src original output path differs: $label" }
                if ($case.Name -eq 'Parser') {
                    foreach ($symbol in @('TRACE','RETAIL','TWW')) { if ($properties.DefineConstants.Split(';') -notcontains $symbol) { throw "Parser symbol $symbol missing: $label" } }
                }
                if ($case.Name -eq 'Blizzard API Harvester' -and $expectedConfiguration -eq 'Test') {
                    if ($properties.DebugSymbols -ne 'true' -or $properties.DefineConstants.Split(';') -notcontains 'DEBUG') { throw 'Harvester Test configuration changed.' }
                }
            }
        }
        if ($case.RejectsOther) {
            # Invoke only the existing guard target: no build, restore, or target program.
            $project = Join-Path $src $case.Path
            $target = if ($case.Name -eq 'Parser') { 'ValidateParserPlatform' } else { 'ValidateCSVCleanerPlatform' }
            $expected = "$($case.Name) supports only the x64 platform in this revision."
            $output = (& msbuild $project -nologo "/t:$target" '/p:Platform=AnyCPU' '/v:minimal' 2>&1 | Out-String)
            $exitCode = $LASTEXITCODE
            $output | Set-Content -Encoding utf8 (Join-Path $evidence "src-platform-guard-$($case.Name).log")
            [pscustomobject]@{ project=$case.Name; target=$target; platform='AnyCPU'; exitCode=$exitCode; expectedMessage=$expected; scope='existing guard target only; no build or runtime' } |
                ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $evidence "src-platform-guard-$($case.Name).json")
            if ($exitCode -eq 0 -or !$output.Contains($expected)) { throw "Existing platform guard did not reject AnyCPU: $($case.Name)" }
        }
    }
}

function Get-AssemblyContract([string] $AssemblyPath, [string] $DependencyDirectory, [string] $Label, [string] $Name) {
    $info = [System.Diagnostics.ProcessStartInfo]::new()
    $info.FileName = Join-Path $env:WINDIR 'System32/WindowsPowerShell/v1.0/powershell.exe'
    $info.WorkingDirectory = $env:RUNNER_TEMP
    $info.UseShellExecute = $false
    $info.RedirectStandardOutput = $true
    $info.RedirectStandardError = $true
    foreach ($argument in @('-NoProfile', '-NonInteractive', '-ExecutionPolicy', 'Bypass', '-File', (Join-Path $PSScriptRoot 'database-sdk-api-ci.ps1'), '-AssemblyPath', $AssemblyPath, '-DependencyDirectory', $DependencyDirectory)) {
        [void] $info.ArgumentList.Add($argument)
    }
    $process = [System.Diagnostics.Process]::new()
    $process.StartInfo = $info
    if (!$process.Start()) { throw "Could not start metadata-only contract check: $Label" }
    $stdout = $process.StandardOutput.ReadToEndAsync()
    $stderr = $process.StandardError.ReadToEndAsync()
    $timedOut = !$process.WaitForExit(60000)
    if ($timedOut) { $process.Kill($true); $process.WaitForExit() }
    $text = $stdout.GetAwaiter().GetResult()
    $errorText = $stderr.GetAwaiter().GetResult()
    [System.IO.File]::WriteAllText((Join-Path $evidence "$Name-contract-$Label.json"), $text)
    [System.IO.File]::WriteAllText((Join-Path $evidence "$Name-contract-$Label.stderr.txt"), $errorText)
    if ($timedOut -or $process.ExitCode -ne 0) { throw "$Name contract check failed or timed out: $Label (exit $($process.ExitCode))" }
    $null = $text | ConvertFrom-Json
    return $text.Trim()
}

try {
    $installedFrameworkRelease = Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full' -Name 'Release'
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
    $srcManifest = Get-ChildItem -LiteralPath $src -File -Recurse -Force | Sort-Object FullName | ForEach-Object {
        $relative = [System.IO.Path]::GetRelativePath($src, $_.FullName)
        "$((Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash)  $relative"
    }
    $srcManifest | Set-Content -Encoding utf8 (Join-Path $evidence 'src-SHA256SUMS.txt')
    Test-DatabaseProjectEvaluation
    Test-SyncProjectEvaluation
    Test-ItemProjectEvaluation
    Test-Net10ProjectEvaluation
    Test-SrcProjectEvaluation
    $baselineDatabase = Join-Path $repositoryTools 'Database.dll'
    $baselineDatabaseHash = (Get-FileHash -LiteralPath $baselineDatabase -Algorithm SHA256).Hash
    if ($baselineDatabaseHash -ne 'EB81E6F1E12BDB6CAD59A20F970434F97122AA5733BD7E2C66975B34BE3B4166') {
        throw 'Database API baseline does not match the validated .NET Framework 4.8 artifact.'
    }
    [pscustomobject]@{ path = $baselineDatabase; sha256 = $baselineDatabaseHash; source = 'previously validated SDK Database' } |
        ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $evidence 'database-api-baseline.json')
    $baselineSync = Join-Path $repositoryTools 'ATT Sync Tool.exe'
    $baselineSyncHash = (Get-FileHash -LiteralPath $baselineSync -Algorithm SHA256).Hash
    if ($baselineSyncHash -ne '249890222A11B08382EC09F4B5F843A9461B8D933627861E7B09C3A0161D6B78') {
        throw 'Sync API baseline does not match the validated .NET Framework 4.8 artifact.'
    }
    [pscustomobject]@{ path = $baselineSync; sha256 = $baselineSyncHash; source = 'previously validated SDK Sync' } |
        ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $evidence 'sync-api-baseline.json')
    $baselineItem = Join-Path $repositoryTools 'Item Database Consolidator.exe'
    $baselineItemHash = (Get-FileHash -LiteralPath $baselineItem -Algorithm SHA256).Hash
    if ($baselineItemHash -ne '56D2B555326EAD31F49E56AB67A5DF7C180813BEA5E76C89D55D8BDE7AA2A949') {
        throw 'Item API baseline does not match the validated .NET Framework 4.8 artifact.'
    }
    [pscustomobject]@{ path = $baselineItem; sha256 = $baselineItemHash; source = 'previously validated SDK Item' } |
        ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $evidence 'item-api-baseline.json')
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
    Copy-Item (Join-Path $source 'Directory.Build.props') (Join-Path $src 'Directory.Build.props')
    @'
<Project>
  <PropertyGroup>
    <OutputPath>$(OutDir)</OutputPath>
    <DocumentationFile Condition="'$(DocumentationFile)' != ''">$(OutDir)$(AssemblyName).xml</DocumentationFile>
    <UseCommonOutputDirectory Condition="'$(UsingMicrosoftNETSdk)' == 'true'">false</UseCommonOutputDirectory>
  </PropertyGroup>
</Project>
'@ | Set-Content -Encoding utf8 (Join-Path $source 'Directory.Build.targets')
    Copy-Item (Join-Path $source 'Directory.Build.targets') (Join-Path $src 'Directory.Build.targets')

    $projects = @(
        @{ Path = 'Database/Database.csproj'; Platform = 'x64'; Legacy = $true },
        @{ Path = 'ATT Sync Tool/ATT Sync Tool.csproj'; Platform = 'x64'; Legacy = $true },
        @{ Path = 'Item Database Consolidator/Item Database Consolidator.csproj'; Platform = 'x64'; Legacy = $true },
        @{ Path = 'Skill Level Requirements/Skill Level Requirements.csproj'; Platform = 'x64' },
        @{ Path = 'AssetDB Builder/AssetDB Builder.csproj'; Platform = 'x64' },
        @{ Path = 'IconID Converter/IconID Converter.csproj'; Platform = 'x64' }
    )
    foreach ($configuration in 'Debug', 'Release') {
        foreach ($project in $projects) {
            $path = Join-Path $source $project.Path
            $name = [System.IO.Path]::GetFileNameWithoutExtension($project.Path)
            $label = "$configuration-$name" -replace '[^a-zA-Z0-9-]', '-'
            Invoke-Build $path $configuration $project.Platform $label
            $output = Join-Path $env:RUNNER_TEMP "att-source-output/$configuration/$name"
            if (!(Test-Path $output)) { throw "Missing isolated output directory: $output" }
            if ($project.Legacy) { Test-FrameworkTarget $name $output $configuration 'project' }
            Test-ProjectPEs $name $output $configuration 'project' ([bool] $project.Legacy)
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

            }
        }
    }
    $additionalProjects = @(
        @{ Name='Parser'; Path='Parser/Parser.csproj'; Legacy=$true; Lua=$true; Csv=$true },
        @{ Name='CSVCleaner'; Path='CSVCleaner/CSVCleaner.csproj'; Legacy=$false },
        @{ Name='Classic Item Detector'; Path='Classic Item Detector/Classic Item Detector.csproj'; Legacy=$true },
        @{ Name='Blizzard API Harvester'; Path='Blizzard API Harvester/Blizzard API Harvester.csproj'; Legacy=$true },
        @{ Name='Item DB Compare Tool'; Path='Item DB Compare Tool/Item DB Compare Tool.csproj'; Legacy=$true }
    )
    foreach ($configuration in 'Debug', 'Release') {
        foreach ($project in $additionalProjects) {
            $name = $project.Name
            $path = Join-Path $src $project.Path
            $label = "$configuration-$name" -replace '[^a-zA-Z0-9-]', '-'
            Invoke-Build $path $configuration 'x64' $label
            $output = Join-Path $env:RUNNER_TEMP "att-source-output/$configuration/$name"
            if ($project.Legacy) { Test-FrameworkTarget $name $output $configuration 'project' }
            Test-ProjectPEs $name $output $configuration 'project' ([bool] $project.Legacy)
            $assetsPath = Join-Path $env:RUNNER_TEMP "att-source-obj/$name/project.assets.json"
            if (!(Test-Path $assetsPath)) { throw "Missing assets manifest: $assetsPath" }
            Copy-Item $assetsPath (Join-Path $evidence "$label.assets.json")
            $assets = Get-Content -Raw $assetsPath | ConvertFrom-Json
            $libraries = @($assets.libraries.PSObject.Properties.Name)
            $assetManifests.Add([pscustomobject]@{ project = $name; configuration = $configuration; path = $assetsPath; libraries = $libraries; packageFolders = @($assets.packageFolders.PSObject.Properties.Name) })
            if ($project.Lua) {
                foreach ($library in 'KeraLua/1.4.11', 'NLua/1.7.9', 'Csv/2.0.245') {
                    if ($libraries -notcontains $library) { throw "Missing expected restored package $library in $assetsPath" }
                }
                $generatedTargets = Join-Path $env:RUNNER_TEMP "att-source-obj/$name/$([System.IO.Path]::GetFileName($project.Path)).nuget.g.targets"
                if (!(Test-Path $generatedTargets) -or !((Get-Content -Raw $generatedTargets) -match 'KeraLua\.targets')) { throw "KeraLua targets not imported: $generatedTargets" }
                Copy-Item $generatedTargets (Join-Path $evidence "$label.nuget.g.targets")
                Test-RestoredFile (Join-Path $output 'KeraLua.dll') 'keralua/1.4.11/lib/net46/KeraLua.dll'
                Test-RestoredFile (Join-Path $output 'NLua.dll') 'nlua/1.7.9/lib/net46/NLua.dll'
                Test-RestoredFile (Join-Path $output 'lua54.dll') 'keralua/1.4.11/runtimes/win-x64/native/lua54.dll'
                Test-RestoredFile (Join-Path $output 'Csv.dll') 'csv/2.0.245/lib/netstandard2.0/Csv.dll'
            }
        }
    }
    foreach ($configuration in 'Debug', 'Release', 'Classic Era', 'Classic TBC', 'Classic Wrath', 'Classic', 'Retail') {
        $label = "solution-$configuration" -replace '[^a-zA-Z0-9-]', '-'
        Invoke-Build (Join-Path $source 'All The Tools.sln') $configuration 'x64' $label
        foreach ($project in $projects) {
            $name = [System.IO.Path]::GetFileNameWithoutExtension($project.Path)
            $mappedConfiguration = if ($configuration -eq 'Debug') { 'Debug' } elseif ($configuration -in @('Classic Era', 'Classic TBC', 'Classic Wrath') -and $name -in @('Database', 'ATT Sync Tool')) { $configuration } else { 'Release' }
            $mappedOutput = Join-Path $env:RUNNER_TEMP "att-source-output/$mappedConfiguration/$name"
            Test-ProjectPEs $name $mappedOutput $mappedConfiguration "solution-$configuration" ([bool] $project.Legacy)
        }
    }
    foreach ($configuration in 'Debug', 'Release') {
        Invoke-Build (Join-Path $src 'Parser/Parser.sln') $configuration 'x64' "parser-solution-$configuration"
        foreach ($project in $additionalProjects | Where-Object { $_.Name -in @('Parser','CSVCleaner') }) {
            Test-ProjectPEs $project.Name (Join-Path $env:RUNNER_TEMP "att-source-output/$configuration/$($project.Name)") $configuration "parser-solution-$configuration" ([bool] $project.Legacy)
        }
    }
    foreach ($configuration in 'Debug', 'Release', 'Test') {
        Invoke-Build (Join-Path $src 'Blizzard API Harvester/Blizzard API Harvester.sln') $configuration 'x64' "harvester-solution-$configuration"
        foreach ($project in $additionalProjects | Where-Object { $_.Name -in @('Blizzard API Harvester','Classic Item Detector','Item DB Compare Tool') }) {
            $mappedConfiguration = if ($configuration -eq 'Test' -and $project.Name -ne 'Blizzard API Harvester') { 'Release' } else { $configuration }
            Test-ProjectPEs $project.Name (Join-Path $env:RUNNER_TEMP "att-source-output/$mappedConfiguration/$($project.Name)") $mappedConfiguration "harvester-solution-$configuration" ([bool] $project.Legacy)
        }
    }
    foreach ($configuration in 'Release', 'Classic Era', 'Classic TBC', 'Classic Wrath') {
        $doc = Join-Path $env:RUNNER_TEMP "att-source-output/$configuration/Database/Database.xml"
        if (!(Test-Path -LiteralPath $doc -PathType Leaf)) { throw "Database XML documentation missing: $doc" }
    }
    $debugDoc = Join-Path $env:RUNNER_TEMP 'att-source-output/Debug/Database/Database.xml'
    if (Test-Path -LiteralPath $debugDoc) { throw "Database Debug unexpectedly produced XML documentation: $debugDoc" }

    # Verify the final Release folders, including dependencies copied after solution builds.
    $release = Join-Path $env:RUNNER_TEMP 'att-source-output/Release'
    foreach ($name in $frameworkExpectations.Keys) {
        Test-FrameworkTarget $name (Join-Path $release $name) 'Release' 'solution-final'
    }
    foreach ($project in $projects) {
        $name = [System.IO.Path]::GetFileNameWithoutExtension($project.Path)
        Test-ProjectPEs $name (Join-Path $release $name) 'Release' 'solution-final' ([bool] $project.Legacy)
    }
    foreach ($project in $additionalProjects) {
        Test-ProjectPEs $project.Name (Join-Path $release $project.Name) 'Release' 'solution-final' ([bool] $project.Legacy)
    }
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
    foreach ($name in 'Parser', 'Classic Item Detector', 'Blizzard API Harvester', 'Item DB Compare Tool') { $required += "$name/$name.exe" }
    foreach ($extension in '.exe', '.dll', '.deps.json', '.runtimeconfig.json') { $required += "CSVCleaner/CSVCleaner$extension" }
    foreach ($relativePath in $required) {
        $path = Join-Path $release $relativePath
        if (!(Test-Path -LiteralPath $path -PathType Leaf)) { throw "Missing Release file: $path" }
    }
    $database = Join-Path $release 'Database/Database.dll'
    $syncDatabase = Join-Path $release 'ATT Sync Tool/Database.dll'
    Test-MatchedFile (Join-Path $release 'Database/Database.dll.config') (Join-Path $source 'Database/app.config') 'Database source config'
    if ((Get-FileHash $database -Algorithm SHA256).Hash -ne (Get-FileHash $syncDatabase -Algorithm SHA256).Hash) {
        throw 'The Database library in ATT Sync Tool differs from the Release Database output.'
    }
    $beforeContract = Get-AssemblyContract $baselineDatabase $originalLua 'before' 'database'
    $afterContract = Get-AssemblyContract $database (Split-Path $database) 'after' 'database'
    if ($beforeContract -cne $afterContract) { throw 'Database public/protected API, identity, or manifest resources differ from the net48 baseline.' }
    $databaseContractMatched = $true
    $sync = Join-Path $release 'ATT Sync Tool/ATT Sync Tool.exe'
    $syncDependencies = Split-Path $sync
    $beforeSyncContract = Get-AssemblyContract $baselineSync $syncDependencies 'before' 'sync'
    $afterSyncContract = Get-AssemblyContract $sync $syncDependencies 'after' 'sync'
    if ($beforeSyncContract -cne $afterSyncContract) { throw 'Sync public/protected API, identity, or manifest resources differ from the net48 baseline.' }
    $syncResources = @(($afterSyncContract | ConvertFrom-Json).manifestResources | Sort-Object)
    $expectedSyncResources = @('ATT.MainForm.resources', 'ATT.Properties.Resources.resources') | Sort-Object
    if (Compare-Object $expectedSyncResources $syncResources) { throw 'Sync manifest resources differ from the expected names.' }
    Add-Type -AssemblyName System.Drawing
    $iconHashes = @(
        foreach ($path in @($baselineSync, $sync)) {
            $icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
            if ($null -eq $icon) { throw "Missing application icon: $path" }
            $stream = [System.IO.MemoryStream]::new()
            try {
                $icon.Save($stream)
                [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($stream.ToArray()))
            } finally { $stream.Dispose(); $icon.Dispose() }
        }
    )
    if ($iconHashes.Count -ne 2 -or $iconHashes[0] -cne $iconHashes[1]) { throw 'Sync application icon differs from the baseline.' }
    [pscustomobject]@{ baseline = $iconHashes[0]; actual = $iconHashes[1]; manifestResources = $syncResources } |
        ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $evidence 'sync-icon-and-resources.json')
    $syncContractMatched = $true
    $item = Join-Path $release 'Item Database Consolidator/Item Database Consolidator.exe'
    $itemDependencies = Split-Path $item
    $beforeItemContract = Get-AssemblyContract $baselineItem $itemDependencies 'before' 'item'
    $afterItemContract = Get-AssemblyContract $item $itemDependencies 'after' 'item'
    if ($beforeItemContract -cne $afterItemContract) { throw 'Item public/protected API, identity, or manifest resources differ from the net48 baseline.' }
    $itemIconHashes = @(
        foreach ($path in @($baselineItem, $item)) {
            $icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
            if ($null -eq $icon) { throw "Missing application icon: $path" }
            $stream = [System.IO.MemoryStream]::new()
            try {
                $icon.Save($stream)
                [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($stream.ToArray()))
            } finally { $stream.Dispose(); $icon.Dispose() }
        }
    )
    if ($itemIconHashes.Count -ne 2 -or $itemIconHashes[0] -cne $itemIconHashes[1]) { throw 'Item application icon differs from the baseline.' }
    [pscustomobject]@{ baseline = $itemIconHashes[0]; actual = $itemIconHashes[1] } |
        ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $evidence 'item-icon.json')
    $itemContractMatched = $true
    foreach ($project in $projects | Where-Object { $_.Legacy }) {
        $name = [System.IO.Path]::GetFileNameWithoutExtension($project.Path)
        $output = Join-Path $release $name
        Test-RestoredFile (Join-Path $output 'KeraLua.dll') 'keralua/1.4.11/lib/net46/KeraLua.dll'
        Test-RestoredFile (Join-Path $output 'NLua.dll') 'nlua/1.7.9/lib/net46/NLua.dll'
        Test-RestoredFile (Join-Path $output 'lua54.dll') 'keralua/1.4.11/runtimes/win-x64/native/lua54.dll'
    }
    Test-RestoredFile (Join-Path $release 'Parser/KeraLua.dll') 'keralua/1.4.11/lib/net46/KeraLua.dll'
    Test-RestoredFile (Join-Path $release 'Parser/NLua.dll') 'nlua/1.7.9/lib/net46/NLua.dll'
    Test-RestoredFile (Join-Path $release 'Parser/lua54.dll') 'keralua/1.4.11/runtimes/win-x64/native/lua54.dll'
    Test-RestoredFile (Join-Path $release 'Parser/Csv.dll') 'csv/2.0.245/lib/netstandard2.0/Csv.dll'
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
    & (Join-Path $PSScriptRoot 'att-src-runtime-ci.ps1') -Release $release -FixtureRoot (Join-Path $runtimeRoot 'src-offline') -Evidence (Join-Path $runtimeEvidence 'src')

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
    foreach ($name in 'Parser.exe', 'Csv.dll') {
        Test-MatchedFile (Join-Path $sharedTools $name) (Join-Path $release "Parser/$name") 'this run Parser output'
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
        shared = 'Fixtures also run with all eleven projects built in this run in one synthetic .tools directory; Parser Lua initialization only, not a full parse.'
        src = 'Built Parser Cost.Merge synthetic tests; CSVCleaner and Item DB Compare actual EXE fixtures; Classic and Blizzard Harvester offline methods only, with no live API or credentials.'
        lua = 'Application integration uses bundled Lua 5.4.9; input syntax is Lua 5.1 compatible.'
    }

    @'
ATT tools - Release build

Each project is in its own folder with its build dependencies. Database is a
library; ATT Sync Tool also has its own copy of Database.dll. The tools use
the same Lua libraries, acquired from NuGet during the build.

ATT Sync Tool, Database, Item Database Consolidator, Parser, Classic Item
Detector, Blizzard API Harvester and Item DB Compare Tool target .NET
Framework 4.8. Skill Level Requirements, AssetDB Builder, IconID Converter and
CSVCleaner target .NET 10 and need the .NET 10 runtime installed. These are Windows x64 build outputs.

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
all eleven projects built in this run; only Parser Lua initialization was
checked by the shared fixtures, not a full parse. Offline fixtures also tested
Parser cost merging, CSVCleaner and Item DB Compare executables, and selected
offline functions in Classic Item Detector and Blizzard API Harvester; the
latter two programs and their live API calls were not run.
'@ | Set-Content -Encoding utf8 (Join-Path $release 'README.txt')
    $manifest = Get-ChildItem -LiteralPath $release -File -Recurse | Sort-Object FullName | ForEach-Object {
        $relativePath = [System.IO.Path]::GetRelativePath($release, $_.FullName)
        "$((Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash)  $relativePath"
    }
    $manifest | Set-Content -Encoding utf8 (Join-Path $release 'SHA256SUMS.txt')
    Copy-Item (Join-Path $release 'SHA256SUMS.txt') (Join-Path $evidence 'release-SHA256SUMS.txt')
    'All eleven projects built in Debug and Release; all twelve solution configurations built with x64 solution mapping.' >> $env:GITHUB_STEP_SUMMARY
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
        frameworkTargets = @($frameworkEvidence)
        installedFrameworkRelease = $installedFrameworkRelease
        databaseContractMatched = $databaseContractMatched
        syncContractMatched = $syncContractMatched
        itemContractMatched = $itemContractMatched
        architectures = @($architectureEvidence)
        runtimeCoverage = $runtimeCoverage
    } | ConvertTo-Json -Depth 10 | Set-Content -Encoding utf8 (Join-Path $evidence 'result.json')
}
