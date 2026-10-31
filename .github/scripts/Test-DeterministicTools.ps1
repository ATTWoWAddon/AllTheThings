$ErrorActionPreference = 'Stop'
$root = $env:GITHUB_WORKSPACE
$baseline = Join-Path $root 'baseline'
$evidence = Join-Path $env:RUNNER_TEMP 'sdk-validation'
$baselineCommit = '2c49d5f32806c943e4a87e4cbbac6d231e73c726'
New-Item -ItemType Directory -Path $evidence -Force | Out-Null
$result = [ordered]@{ commit=$env:GITHUB_SHA; baselineCommit=$baselineCommit; comparisons=@(); repeatBuilds=@(); processes=@(); passed=$false; error=$null }
$projects = @(
    @{ Name='Parser'; Project='Parser/Parser.csproj'; Exe='Parser.exe'; Platform='x64'; Configs=@('Debug','Release') },
    @{ Name='Harvester'; Project='Blizzard API Harvester/Blizzard API Harvester.csproj'; Exe='Blizzard API Harvester.exe'; Platform='AnyCPU'; Configs=@('Debug','Release','Test') }
)
function Manifest([string]$directory, [scriptblock]$filter) {
    $base = [IO.Path]::GetFullPath($directory).TrimEnd('\')
    @(Get-ChildItem -LiteralPath $base -File -Recurse -Force | Where-Object $filter | ForEach-Object {
        '{0}  {1}' -f (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant(), $_.FullName.Substring($base.Length + 1).Replace('\','/')
    } | Sort-Object -CaseSensitive)
}
function Assert-Same([string[]]$left, [string[]]$right, [string]$label) {
    if ($left.Count -eq 0 -or $left.Count -ne $right.Count) { throw "$label count differs or is empty" }
    for ($i=0; $i -lt $left.Count; $i++) { if ($left[$i] -cne $right[$i]) { throw "$label differs at index $i`: $($left[$i]) vs $($right[$i])" } }
}
function Write-Lines([string]$path, [string[]]$lines) { [IO.File]::WriteAllLines($path, $lines, [Text.UTF8Encoding]::new($false)) }
function Run-Process([string]$exe, [string]$arguments, [string]$directory, [string]$label) {
    $out = Join-Path $evidence "$label.stdout.log"; $err = Join-Path $evidence "$label.stderr.log"
    $proc = Start-Process -FilePath $exe -ArgumentList $arguments -WorkingDirectory $directory -RedirectStandardOutput $out -RedirectStandardError $err -PassThru -WindowStyle Hidden
    $handle = $proc.Handle
    if (-not $proc.WaitForExit(120000)) { $proc.Kill(); $proc.WaitForExit(); $result.processes += @{ label=$label; exitCode=$null; timedOut=$true }; throw "$label timed out" }
    $proc.WaitForExit()
    $result.processes += @{ label=$label; exitCode=$proc.ExitCode; timedOut=$false }
    if ($null -eq $proc.ExitCode -or $proc.ExitCode -ne 0) { throw "$label exit code: $($proc.ExitCode)" }
    if ((Get-Item -LiteralPath $err).Length -ne 0) { throw "$label wrote to stderr" }
}
function Assert-MetadataContract($left, $right, [string]$label) {
    foreach ($side in $left,$right) {
        if ($side.contract.normalizedMetadataSha256 -cnotmatch '^[0-9a-f]{64}$' -or $side.layoutNormalizedMetadataSha256 -cnotmatch '^[0-9a-f]{64}$') { throw "$label missing metadata SHA256" }
    }
    $leftRows=@($left.rvaRows); $rightRows=@($right.rvaRows)
    if ($leftRows.Count -eq 0 -or $leftRows.Count -ne $rightRows.Count) { throw "$label RVA row count differs" }
    for ($i=0; $i -lt $leftRows.Count; $i++) {
        $a=$leftRows[$i]; $b=$rightRows[$i]
        if ($a.table -cne $b.table -or $a.row -ne $b.row -or $a.token -ne $b.token -or $a.offset -ne $b.offset -or
            (($a.originalRva -eq 0) -ne ($b.originalRva -eq 0))) { throw "$label RVA row identity or body presence differs at index $i" }
    }
    $leftContract=[ordered]@{}; $rightContract=[ordered]@{}
    foreach ($p in $left.contract.PSObject.Properties) { if ($p.Name -cne 'normalizedMetadataSha256') { $leftContract[$p.Name]=$p.Value } }
    foreach ($p in $right.contract.PSObject.Properties) { if ($p.Name -cne 'normalizedMetadataSha256') { $rightContract[$p.Name]=$p.Value } }
    if ((ConvertTo-Json -InputObject $leftContract -Depth 30 -Compress) -cne (ConvertTo-Json -InputObject $rightContract -Depth 30 -Compress)) { throw "$label logical PE contract, raw method IL or initialized field bytes differ" }
    if ($left.layoutNormalizedMetadataSha256 -cne $right.layoutNormalizedMetadataSha256) { throw "$label non-layout metadata bytes differ" }
}
function Invoke-Reflection([string]$exe, [string]$output, [string]$label) {
    $hostExe = Join-Path $env:WINDIR 'System32/WindowsPowerShell/v1.0/powershell.exe'
    $probe = Join-Path $root '.github/scripts/Invoke-ParserReflectionProbe.ps1'
    $arguments = '-NoProfile -NonInteractive -File "{0}" -Executable "{1}" -Output "{2}"' -f $probe, $exe, $output
    Run-Process $hostExe $arguments ([IO.Path]::GetDirectoryName($exe)) $label
    if (-not (Test-Path -LiteralPath $output -PathType Leaf)) { throw "$label output missing" }
}
try {
    $baselineActual = (& git -C $baseline rev-parse HEAD).Trim()
    if ($LASTEXITCODE -ne 0 -or $baselineActual -cne $baselineCommit) { throw "Wrong baseline commit: $baselineActual" }
    $paths = @('.contrib/src/Blizzard API Harvester/Blizzard API Harvester.csproj','.contrib/src/Parser/Parser.csproj')
    $ciPaths = @('.github/workflows/ContributorTools.yml','.github/scripts/Test-DeterministicTools.ps1',
        '.github/scripts/Get-SdkBinaryMetadata.ps1','.github/scripts/Get-PeDebugEvidence.ps1',
        '.github/scripts/Invoke-SdkFixture.ps1','.github/scripts/Invoke-ParserReflectionProbe.ps1','.github/scripts/Compare-ParserPackages.ps1')
    $baseTree = @(& git -C $baseline ls-tree -r --full-tree HEAD)
    if ($LASTEXITCODE -ne 0) { throw 'Baseline Git tree enumeration failed' }
    $candidateTree = @(& git -C $root ls-tree -r --full-tree $env:GITHUB_SHA)
    if ($LASTEXITCODE -ne 0) { throw 'Candidate Git tree enumeration failed' }
    $baseNames=@($baseTree | ForEach-Object { ($_ -split "`t",2)[1] })
    $candidateNames=@($candidateTree | ForEach-Object { ($_ -split "`t",2)[1] })
    foreach ($path in $paths) {
        $baseEntries=@($baseTree | Where-Object { ($_ -split "`t",2)[1] -ceq $path })
        $candidateEntries=@($candidateTree | Where-Object { ($_ -split "`t",2)[1] -ceq $path })
        if ($baseEntries.Count -ne 1 -or $candidateEntries.Count -ne 1 -or
            $baseEntries[0] -cnotmatch '^100644 blob [0-9a-f]{40}\t' -or $candidateEntries[0] -cnotmatch '^100644 blob [0-9a-f]{40}\t') { throw "Unexpected product tree mode, type or path: $path" }
    }
    foreach ($path in $ciPaths) { if ($path -cin $baseNames -or $path -cnotin $candidateNames) { throw "Unexpected CI tree path: $path" } }
    $excludedTree=@($paths + $ciPaths)
    $leftTree=@($baseTree | Where-Object { ($_ -split "`t",2)[1] -cnotin $excludedTree } | Sort-Object -CaseSensitive)
    $rightTree=@($candidateTree | Where-Object { ($_ -split "`t",2)[1] -cnotin $excludedTree } | Sort-Object -CaseSensitive)
    Assert-Same $leftTree $rightTree 'Git trees excluding exact product and CI paths'
    Write-Lines (Join-Path $evidence 'baseline.tree-manifest.txt') $leftTree
    Write-Lines (Join-Path $evidence 'candidate.tree-manifest.txt') $rightTree
    $source = Join-Path $root '.contrib/src'; $baseSource = Join-Path $baseline '.contrib/src'
    foreach ($project in $projects) {
        $basePath = Join-Path $baseSource $project.Project; $candidatePath = Join-Path $source $project.Project
        $before = [IO.File]::ReadAllBytes($basePath); $after = [IO.File]::ReadAllBytes($candidatePath)
        if ($before.Length -lt 3 -or $before[0] -ne 0xef -or $before[1] -ne 0xbb -or $before[2] -ne 0xbf) { throw "$($project.Name) missing UTF-8 BOM" }
        $utf8 = [Text.UTF8Encoding]::new($false, $true)
        $text = $utf8.GetString($before,3,$before.Length-3)
        if ($text -match '(?<!\r)\n' -or $text -match '\r(?!\n)') { throw "$($project.Name) baseline not CRLF" }
        $line = "    <Deterministic>false</Deterministic>`r`n"
        if (([regex]::Matches($text, [regex]::Escape($line))).Count -ne 1) { throw "$($project.Name) expected exactly one Deterministic line" }
        [byte[]]$expected = @([byte]0xef,[byte]0xbb,[byte]0xbf) + $utf8.GetBytes($text.Replace($line,''))
        if (-not [Linq.Enumerable]::SequenceEqual[byte]($expected,$after)) { throw "$($project.Name) candidate not exact one-line deletion" }
        [IO.File]::WriteAllBytes((Join-Path $evidence "$($project.Name).before.csproj"), $before)
        [IO.File]::WriteAllBytes((Join-Path $evidence "$($project.Name).after.csproj"), $after)
    }
    $excluded = @($projects | ForEach-Object { $_.Project.Replace('\','/') })
    $filter = {
        $rel = [IO.Path]::GetRelativePath($currentSource,$_.FullName).Replace('\','/')
        $rel -notin $excluded -and $rel -notmatch '(^|/)(obj|bin)(/|$)'
    }
    $currentSource=$baseSource; $left=@(Manifest $baseSource $filter)
    $currentSource=$source; $right=@(Manifest $source $filter)
    Assert-Same $left $right 'Non-project source manifest'
    Write-Lines (Join-Path $evidence 'source.sha256') $left
    foreach ($relative in '.editorconfig') {
        $a=(Get-FileHash -LiteralPath (Join-Path $baseline $relative)).Hash
        $b=(Get-FileHash -LiteralPath (Join-Path $root $relative)).Hash
        if ($a -cne $b) { throw "$relative differs" }
    }
    $packages = @{ Csv='[2.0.245]'; KeraLua='[1.4.11]'; NLua='[1.7.9]' }
    foreach ($tree in $baseline,$root) {
        $xml=[xml](Get-Content -LiteralPath (Join-Path $tree '.contrib/src/Parser/Parser.csproj') -Raw)
        foreach ($name in $packages.Keys) {
            $refs=@($xml.Project.ItemGroup.PackageReference | Where-Object { $_.Include -eq $name })
            if ($refs.Count -ne 1 -or $refs[0].Version -ne $packages[$name]) { throw "Unexpected Parser package $name in $tree" }
        }
    }
    foreach ($project in $projects) {
        foreach ($config in $project.Configs) {
            foreach ($side in 'baseline','candidate') {
                $tree = if ($side -eq 'baseline') { $baseline } else { $root }
                $projectPath = Join-Path (Join-Path $tree '.contrib/src') $project.Project
                $output = Join-Path $evidence "$side/$($project.Name)/$config"
                New-Item -ItemType Directory -Path $output -Force | Out-Null
                $outPath = $output.Replace('\','/') + '/'
                $label = "$side-$($project.Name)-$config"
                $arguments = @($projectPath,'-restore','-t:Rebuild',"-p:Configuration=$config","-p:Platform=$($project.Platform)","-p:OutputPath=$outPath","-p:OutDir=$outPath","-bl:$(Join-Path $evidence "$label.binlog")")
                [IO.File]::WriteAllText((Join-Path $evidence "$label.command.txt"), ('msbuild ' + ($arguments -join ' ')), [Text.UTF8Encoding]::new($false))
                & msbuild @arguments *> (Join-Path $evidence "$label.build.log")
                if ($LASTEXITCODE -ne 0) { throw "$label build failed: $LASTEXITCODE" }
                $propertyNames='OutputType,Platform,Platforms,PlatformTarget,Prefer32Bit,DefineConstants,LangVersion,DebugType,DebugSymbols,Optimize,Deterministic,OutputPath,TargetFramework,TargetFrameworkVersion,GenerateAssemblyInfo,AppendTargetFrameworkToOutputPath,RootNamespace,StartupObject,Configurations'
                $properties=& msbuild $projectPath -nologo '-t:AddImplicitDefineConstants' "-getProperty:$propertyNames" "-p:Configuration=$config" "-p:Platform=$($project.Platform)"
                if ($LASTEXITCODE -ne 0) { throw "$label property evaluation failed" }
                [IO.File]::WriteAllText((Join-Path $evidence "$label.properties.json"), ($properties -join "`n"), [Text.UTF8Encoding]::new($false))
                $items=& msbuild $projectPath -nologo '-getItem:Compile' "-p:Configuration=$config" "-p:Platform=$($project.Platform)"
                if ($LASTEXITCODE -ne 0) { throw "$label Compile item evaluation failed" }
                $dir=Split-Path -Parent $projectPath
                $paths=@(($items -join "`n" | ConvertFrom-Json).Items.Compile | ForEach-Object { [IO.Path]::GetRelativePath($dir,$_.FullPath).Replace('\','/') })
                Write-Lines (Join-Path $evidence "$label.compile.txt") $paths
                $exe=Join-Path $output $project.Exe
                if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) { throw "$label executable missing" }
                & (Join-Path $root '.github/scripts/Get-SdkBinaryMetadata.ps1') -Path $exe -Output (Join-Path $evidence "$label.metadata.json")
                & (Join-Path $root '.github/scripts/Get-PeDebugEvidence.ps1') -Path $exe -Output (Join-Path $evidence "$label.pe-debug.json")
                if ($project.Name -eq 'Parser') { Invoke-Reflection $exe (Join-Path $evidence "$label.reflection.json") "$label-reflection" }
            }
            $leftLabel="baseline-$($project.Name)-$config"; $rightLabel="candidate-$($project.Name)-$config"
            $leftCompile=@(Get-Content -LiteralPath (Join-Path $evidence "$leftLabel.compile.txt")); $rightCompile=@(Get-Content -LiteralPath (Join-Path $evidence "$rightLabel.compile.txt"))
            Assert-Same $leftCompile $rightCompile "$($project.Name) $config Compile order"
            $seen=[Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
            foreach ($item in $leftCompile) { if ([string]::IsNullOrEmpty($item) -or -not $seen.Add($item)) { throw "$($project.Name) $config duplicate or empty Compile item" } }
            if ($project.Name -eq 'Parser' -and $leftCompile.Count -ne 94) { throw "$config unexpected Parser Compile count: $($leftCompile.Count)" }
            $leftProps=(Get-Content -Raw -LiteralPath (Join-Path $evidence "$leftLabel.properties.json") | ConvertFrom-Json).Properties
            $rightProps=(Get-Content -Raw -LiteralPath (Join-Path $evidence "$rightLabel.properties.json") | ConvertFrom-Json).Properties
            if ($leftProps.Deterministic -cne 'false' -or $rightProps.Deterministic -cne 'true') { throw "$($project.Name) $config Deterministic mismatch" }
            foreach ($prop in $leftProps.PSObject.Properties.Name) {
                if ($prop -ne 'Deterministic' -and $leftProps.$prop -cne $rightProps.$prop) { throw "$($project.Name) $config property $prop differs: $($leftProps.$prop) vs $($rightProps.$prop)" }
            }
            $baseOut=Join-Path $evidence "baseline/$($project.Name)/$config"; $candidateOut=Join-Path $evidence "candidate/$($project.Name)/$config"
            $runtimeFilter={ $_.Name -cne $project.Exe -and $_.Extension -cne '.pdb' }
            $leftFiles=@(Manifest $baseOut $runtimeFilter); $rightFiles=@(Manifest $candidateOut $runtimeFilter)
            Write-Lines (Join-Path $evidence "$leftLabel.runtime.sha256") $leftFiles
            Write-Lines (Join-Path $evidence "$rightLabel.runtime.sha256") $rightFiles
            Assert-Same $leftFiles $rightFiles "$($project.Name) $config runtime files"
            $leftPe=Get-Content -Raw -LiteralPath (Join-Path $evidence "$leftLabel.pe-debug.json") | ConvertFrom-Json
            $rightPe=Get-Content -Raw -LiteralPath (Join-Path $evidence "$rightLabel.pe-debug.json") | ConvertFrom-Json
            if ((ConvertTo-Json -InputObject $leftPe.stable -Depth 10 -Compress) -cne (ConvertTo-Json -InputObject $rightPe.stable -Depth 10 -Compress)) { throw "$($project.Name) $config stable PE header differs" }
            $leftMeta=Get-Content -Raw -LiteralPath (Join-Path $evidence "$leftLabel.metadata.json") | ConvertFrom-Json
            $rightMeta=Get-Content -Raw -LiteralPath (Join-Path $evidence "$rightLabel.metadata.json") | ConvertFrom-Json
            Assert-MetadataContract $leftMeta $rightMeta "$($project.Name) $config"
            $expectedMachine=if ($project.Name -eq 'Parser') { 'Amd64' } else { 'I386' }
            $expectedMagic=if ($project.Name -eq 'Parser') { 'PE32Plus' } else { 'PE32' }
            if ($leftMeta.contract.machine -ne $expectedMachine -or $leftMeta.contract.peMagic -ne $expectedMagic -or
                $leftMeta.contract.corFlags -ne 1 -or $leftMeta.contract.entryPoint -eq 0 -or
                $leftMeta.contract.assemblyName -cne [IO.Path]::GetFileNameWithoutExtension($project.Exe) -or
                $leftMeta.contract.assemblyVersion -cne '1.0.0.0' -or $leftMeta.contract.targetFramework -cne '.NETFramework,Version=v4.8') { throw "$($project.Name) $config unexpected executable identity or platform" }
            if ($project.Name -eq 'Parser' -and @($leftMeta.contract.fields | Where-Object { $_.initializedData }).Count -eq 0) { throw "$config Parser initialized FieldRVA data missing" }
            if ($project.Name -eq 'Parser') {
                $leftReflection=Get-Content -Raw -LiteralPath (Join-Path $evidence "$leftLabel.reflection.json") | ConvertFrom-Json
                $rightReflection=Get-Content -Raw -LiteralPath (Join-Path $evidence "$rightLabel.reflection.json") | ConvertFrom-Json
                if ($leftReflection.hostArchitecture -ne 64 -or $leftReflection.entryPoint -cne 'ATT.Program.Main(System.String[])->System.Int32' -or @($leftReflection.modules).Count -ne 27) { throw "$config unexpected Parser reflection contract" }
                if ((ConvertTo-Json -InputObject $leftReflection -Depth 30 -Compress) -cne (ConvertTo-Json -InputObject $rightReflection -Depth 30 -Compress)) { throw "$config Parser reflection differs" }
            }
            $result.comparisons += [ordered]@{ project=$project.Name; configuration=$config; baselineSha256=$leftMeta.sha256; candidateSha256=$rightMeta.sha256; baselineMvid=$leftMeta.mvid; candidateMvid=$rightMeta.mvid; baselineTimestamp=$leftMeta.timestamp; candidateTimestamp=$rightMeta.timestamp; baselineMvidOnlyMetadataSha256=$leftMeta.contract.normalizedMetadataSha256; candidateMvidOnlyMetadataSha256=$rightMeta.contract.normalizedMetadataSha256; baselineLayoutMetadataSha256=$leftMeta.layoutNormalizedMetadataSha256; candidateLayoutMetadataSha256=$rightMeta.layoutNormalizedMetadataSha256; compileOrderEqual=$true; otherPropertiesEqual=$true; baselineDeterministic=$leftProps.Deterministic; candidateDeterministic=$rightProps.Deterministic; contractEqual=$true; runtimeEqual=$true }
        }
    }
    foreach ($project in $projects) {
        $config='Release'; $candidatePath=Join-Path (Join-Path $root '.contrib/src') $project.Project
        $output=Join-Path $evidence "candidate/$($project.Name)/$config"; $saved=Join-Path $evidence "repeat-first/$($project.Name)"
        New-Item -ItemType Directory -Path $saved -Force | Out-Null
        $exe=Join-Path $output $project.Exe; $pdb=Join-Path $output ([IO.Path]::GetFileNameWithoutExtension($project.Exe)+'.pdb')
        Copy-Item -LiteralPath $exe -Destination $saved
        $pdbPresent=Test-Path -LiteralPath $pdb -PathType Leaf
        if ($project.Name -eq 'Parser' -and $pdbPresent) { throw 'Parser Release unexpectedly emitted PDB' }
        if ($project.Name -eq 'Harvester' -and -not $pdbPresent) { throw 'Harvester Release PDB missing' }
        if ($pdbPresent) { Copy-Item -LiteralPath $pdb -Destination $saved }
        $outPath=$output.Replace('\','/') + '/'; $label="candidate-$($project.Name)-Release-repeat"
        $arguments=@($candidatePath,'-restore','-t:Rebuild',"-p:Configuration=$config","-p:Platform=$($project.Platform)","-p:OutputPath=$outPath","-p:OutDir=$outPath","-bl:$(Join-Path $evidence "$label.binlog")")
        [IO.File]::WriteAllText((Join-Path $evidence "$label.command.txt"), ('msbuild ' + ($arguments -join ' ')), [Text.UTF8Encoding]::new($false))
        & msbuild @arguments *> (Join-Path $evidence "$label.build.log")
        if ($LASTEXITCODE -ne 0) { throw "$label rebuild failed: $LASTEXITCODE" }
        $firstExe=Join-Path $saved $project.Exe; $firstHash=(Get-FileHash -LiteralPath $firstExe).Hash.ToLowerInvariant(); $secondHash=(Get-FileHash -LiteralPath $exe).Hash.ToLowerInvariant()
        if ($firstHash -cne $secondHash) { throw "$label executable not reproducible at same paths" }
        & (Join-Path $root '.github/scripts/Get-PeDebugEvidence.ps1') -Path $exe -Output (Join-Path $evidence "$label.pe-debug.json")
        $secondPdbPresent=Test-Path -LiteralPath $pdb -PathType Leaf
        if ($pdbPresent -ne $secondPdbPresent) { throw "$label PDB presence changed" }
        $pdbHash=$null
        if ($pdbPresent) {
            $pdbHash=(Get-FileHash -LiteralPath (Join-Path $saved ([IO.Path]::GetFileName($pdb)))).Hash.ToLowerInvariant()
            if ($pdbHash -cne (Get-FileHash -LiteralPath $pdb).Hash.ToLowerInvariant()) { throw "$label PDB not reproducible at same paths" }
        }
        $result.repeatBuilds += [ordered]@{ project=$project.Name; sameSourceAndOutputPaths=$true; executableSha256=$firstHash; pdbPresent=$pdbPresent; pdbSha256=$pdbHash }
    }
    foreach ($side in 'baseline','candidate') {
        foreach ($config in 'Release','Test') {
            $exe=Join-Path $evidence "$side/Harvester/$config/Blizzard API Harvester.exe"
            $dir=Join-Path $evidence "fixtures/$side/harvester-$config"
            New-Item -ItemType Directory -Path $dir -Force | Out-Null
            $fixture=Join-Path $root '.github/scripts/Invoke-SdkFixture.ps1'
            $args='-NoProfile -NonInteractive -File "{0}" -Mode harvester -Executable "{1}" -Directory "{2}"' -f $fixture,$exe,$dir
            $hostExe=Join-Path $env:WINDIR 'System32/WindowsPowerShell/v1.0/powershell.exe'
            $label="$side-harvester-$config-fixture"
            Run-Process $hostExe $args $dir $label
            if ((Get-Content -Raw (Join-Path $evidence "$label.stdout.log")) -notmatch 'Fixture host architecture: 64-bit') { throw "$label not 64-bit" }
        }
    }
    foreach ($config in 'Release','Test') {
        $a=Join-Path $evidence "fixtures/baseline/harvester-$config/roundtrip.json"
        $b=Join-Path $evidence "fixtures/candidate/harvester-$config/roundtrip.json"
        if ((Get-FileHash -LiteralPath $a).Hash -cne (Get-FileHash -LiteralPath $b).Hash) { throw "Harvester $config fixture output differs" }
    }
    # Direct executable smoke: fixed-date parse-only mode, with empty local input and no real credential.
    # This does not exercise live API or online harvest behavior.
    foreach ($side in 'baseline','candidate') {
        foreach ($config in 'Release','Test') {
            $dir=Join-Path $evidence "cli-smoke/$side/$config"
            if (Test-Path -LiteralPath $dir) { throw "Harvester CLI directory already exists: $dir" }
            New-Item -ItemType Directory -Path $dir -Force | Out-Null
            $clientKey=Join-Path $dir 'Client.key'
            if (Test-Path -LiteralPath $clientKey) { throw "Unexpected Client.key in $dir" }
            foreach ($relative in 'DBs','RAW/items.20000101','RAW/quests.20000101') {
                New-Item -ItemType Directory -Path (Join-Path $dir $relative) -Force | Out-Null
            }
            [IO.File]::WriteAllText((Join-Path $dir 'API.key'), 'NOT-A-REAL-API-CREDENTIAL', [Text.UTF8Encoding]::new($false))
            if (Test-Path -LiteralPath $clientKey) { throw "Unexpected Client.key before launch: $dir" }
            $exe=Join-Path $evidence "$side/Harvester/$config/Blizzard API Harvester.exe"
            $label="$side-harvester-$config-cli"
            Run-Process $exe 'parse=20000101 item quest' $dir $label
            $log=Get-Content -Raw -LiteralPath (Join-Path $evidence "$label.stdout.log")
            if ($log -notmatch '(?m)^Harvester Started using Date:20000101\r?$' -or
                $log -notmatch '(?m)^Harvester Complete!\r?$' -or
                $log -match '(?im)Harvesting|API\s*@|Exception|\bERROR\b|Retry -|missing an .API\.key') { throw "$label unexpected CLI output" }
            if (Test-Path -LiteralPath $clientKey) { throw "Unexpected Client.key after launch: $dir" }
            foreach ($case in @(@('itemDB-20000101.json','items'), @('questDB-20000101.json','quests'))) {
                $file=Join-Path (Join-Path $dir 'DBs') $case[0]
                if (-not (Test-Path -LiteralPath $file -PathType Leaf) -or (Get-Item -LiteralPath $file).Length -eq 0) { throw "$label missing output $($case[0])" }
                $json=Get-Content -Raw -LiteralPath $file | ConvertFrom-Json
                if (@($json.PSObject.Properties).Count -ne 1 -or $json.PSObject.Properties.Name -cne $case[1] -or
                    $json.($case[1]) -isnot [array] -or @($json.($case[1])).Count -ne 0) { throw "$label unexpected empty output schema $($case[0])" }
            }
        }
    }
    foreach ($config in 'Release','Test') {
        foreach ($file in 'itemDB-20000101.json','questDB-20000101.json') {
            $a=Join-Path $evidence "cli-smoke/baseline/$config/DBs/$file"
            $b=Join-Path $evidence "cli-smoke/candidate/$config/DBs/$file"
            if ((Get-FileHash -LiteralPath $a).Hash -cne (Get-FileHash -LiteralPath $b).Hash) { throw "Harvester $config CLI output differs: $file" }
        }
    }
    $result['harvesterCliSmoke'] = 'Release and Test executables, fixed-date parse-only mode, empty inputs, non-credential sentinel; no online API coverage'
    $baselinePackage=Join-Path $env:RUNNER_TEMP 'baseline-parser'; $candidatePackage=Join-Path $env:RUNNER_TEMP 'contributor-tools'
    New-Item -ItemType Directory -Path $baselinePackage,$candidatePackage -Force | Out-Null
    Copy-Item -LiteralPath (Join-Path $evidence 'baseline/Parser/Release') -Destination (Join-Path $baselinePackage 'Parser') -Recurse
    Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Parser/Release') -Destination (Join-Path $candidatePackage 'Parser') -Recurse
    Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Harvester/Release') -Destination (Join-Path $candidatePackage 'BlizzardAPIHarvester') -Recurse
    Copy-Item -LiteralPath (Join-Path $evidence 'source.sha256') -Destination (Join-Path $baselinePackage 'source.sha256')
    $info=@{ commit=$env:GITHUB_SHA; baselineCommit=$baselineCommit; packages=$packages }
    foreach ($directory in $baselinePackage,$candidatePackage) { [IO.File]::WriteAllText((Join-Path $directory 'build-info.json'), ($info | ConvertTo-Json -Depth 5), [Text.UTF8Encoding]::new($false)) }
    $result.passed=$true
} catch {
    $result.error=$_.Exception.ToString()
    throw
} finally {
    [IO.File]::WriteAllText((Join-Path $evidence 'result.json'), ($result | ConvertTo-Json -Depth 15), [Text.UTF8Encoding]::new($false))
}
