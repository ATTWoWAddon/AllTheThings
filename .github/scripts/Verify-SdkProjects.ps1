$ErrorActionPreference = 'Stop'
$root = $env:GITHUB_WORKSPACE
$baseline = Join-Path $root 'baseline'
$evidence = Join-Path $env:RUNNER_TEMP 'sdk-validation'
New-Item -ItemType Directory -Path $evidence -Force | Out-Null
$result = [ordered]@{ commit=$env:GITHUB_SHA; baselineCommit='0ab01b14d7f262744b5c4e64d6df06206052ba6a'; comparisons=@(); processes=@(); fixturesPassed=$false; passed=$false; error=$null }
try {
$projects = @(
    @{ Name='Parser'; Project='Parser/Parser.csproj'; Exe='Parser.exe'; Platform='x64'; Configs=@('Debug','Release') },
    @{ Name='Harvester'; Project='Blizzard API Harvester/Blizzard API Harvester.csproj'; Exe='Blizzard API Harvester.exe'; Platform='AnyCPU'; Configs=@('Debug','Release','Test') },
    @{ Name='Classic'; Project='Classic Item Detector/Classic Item Detector.csproj'; Exe='Classic Item Detector.exe'; Platform='AnyCPU'; Configs=@('Debug','Release') },
    @{ Name='Compare'; Project='Item DB Compare Tool/Item DB Compare Tool.csproj'; Exe='Item DB Compare Tool.exe'; Platform='AnyCPU'; Configs=@('Debug','Release') }
)
function Manifest([string]$directory, [scriptblock]$filter) {
    $base = [IO.Path]::GetFullPath($directory).TrimEnd('\')
    @(Get-ChildItem -LiteralPath $base -File -Recurse -Force | Where-Object $filter | ForEach-Object {
        '{0}  {1}' -f (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant(), $_.FullName.Substring($base.Length + 1).Replace('\', '/')
    } | Sort-Object)
}
function Check-Same([string[]]$a, [string[]]$b, [string]$message) {
    if ($a.Count -eq 0 -or $b.Count -eq 0 -or (Compare-Object $a $b)) { throw $message }
}
function Run-Process([string]$exe, [string]$arguments, [string]$directory, [string]$label) {
    $out = Join-Path $evidence "$label.stdout.log"; $err = Join-Path $evidence "$label.stderr.log"
    $proc = Start-Process -FilePath $exe -ArgumentList $arguments -WorkingDirectory $directory -RedirectStandardOutput $out -RedirectStandardError $err -PassThru -WindowStyle Hidden
    $handle = $proc.Handle
    if (-not $proc.WaitForExit(120000)) { $proc.Kill(); $proc.WaitForExit(); $result.processes += @{ label=$label; executable=$exe; exitCode=$null; timedOut=$true }; throw "$label timed out" }
    $proc.WaitForExit()
    $result.processes += @{ label=$label; executable=$exe; exitCode=$proc.ExitCode; timedOut=$false }
    if ($null -eq $proc.ExitCode -or $proc.ExitCode -ne 0) { throw "$label exit code: $($proc.ExitCode)" }
    if ((Get-Item -LiteralPath $err).Length -ne 0) { throw "$label wrote to stderr" }
}
$source = Join-Path $root '.contrib/src'
$baseSource = Join-Path $baseline '.contrib/src'
$projectNames = @($projects | ForEach-Object { [IO.Path]::GetFileName($_.Project) })
$sourceFilter = { $_.Name -notin $projectNames -and $_.FullName -notmatch '[/\\](obj|bin)[/\\]' }
$a = @(Manifest $source $sourceFilter); $b = @(Manifest $baseSource $sourceFilter)
Check-Same $a $b 'Non-project source differs from pinned baseline'
[IO.File]::WriteAllLines((Join-Path $evidence 'source.sha256'), $a)
$packages = @{ Csv='[2.0.245]'; KeraLua='[1.4.11]'; NLua='[1.7.9]' }
foreach ($tree in $baseline, $root) {
    $xml = [xml](Get-Content -Raw (Join-Path $tree '.contrib/src/Parser/Parser.csproj'))
    foreach ($name in $packages.Keys) {
        $ref = @($xml.Project.ItemGroup.PackageReference | Where-Object { $_.Include -eq $name })
        if ($ref.Count -ne 1 -or $ref[0].Version -ne $packages[$name]) { throw "Unexpected $name package in $tree" }
    }
}
# Check that each existing solution configuration can still be selected.
$solutions = @(
    @{ Name='Parser'; Path='.contrib/src/Parser/Parser.sln'; Platform='x64'; Configs=@('Debug','Release') },
    @{ Name='Harvesters'; Path='.contrib/src/Blizzard API Harvester/Blizzard API Harvester.sln'; Platform='Any CPU'; Configs=@('Debug','Release','Test') }
)
foreach ($side in 'baseline','candidate') {
    $tree = if ($side -eq 'baseline') { $baseline } else { $root }
    foreach ($solution in $solutions) {
        foreach ($config in $solution.Configs) {
            $log = Join-Path $evidence "$side-$($solution.Name)-$config.solution.log"
            & msbuild (Join-Path $tree $solution.Path) -nologo '-t:ValidateSolutionConfiguration' "-p:Configuration=$config" "-p:Platform=$($solution.Platform)" *> $log
            if ($LASTEXITCODE -ne 0) { Get-Content $log | Write-Host; throw "$side $($solution.Name) $config solution configuration failed" }
        }
    }
}
$parserPath = Join-Path $root '.contrib/src/Parser/Parser.csproj'
$defaultParser = & msbuild $parserPath -nologo '-getProperty:Platform,OutputType' '-p:Configuration=Release'
if ($LASTEXITCODE -ne 0) { throw 'Parser default property evaluation failed' }
[IO.File]::WriteAllText((Join-Path $evidence 'candidate-Parser-default.properties.json'), ($defaultParser -join "`n"), [Text.UTF8Encoding]::new($false))
$defaultParserProps = ($defaultParser -join "`n" | ConvertFrom-Json).Properties
if ($defaultParserProps.Platform -ne 'x64' -or $defaultParserProps.OutputType -ne 'Exe') { throw 'Parser default platform or output type changed' }
foreach ($project in $projects) {
    foreach ($config in $project.Configs) {
        foreach ($side in 'baseline','candidate') {
            $tree = if ($side -eq 'baseline') { $baseline } else { $root }
            $path = Join-Path (Join-Path $tree '.contrib/src') $project.Project
            $output = Join-Path $evidence "$side/$($project.Name)/$config"
            New-Item -ItemType Directory -Path $output -Force | Out-Null
            $outPath = $output.Replace('\','/') + '/'
            $binlog = Join-Path $evidence "$side-$($project.Name)-$config.binlog"
            $log = Join-Path $evidence "$side-$($project.Name)-$config.build.log"
            $arguments = @($path, '-restore', '-t:Rebuild', "-p:Configuration=$config", "-p:Platform=$($project.Platform)", "-p:OutputPath=$outPath", "-p:OutDir=$outPath", "-bl:$binlog")
            [IO.File]::WriteAllText((Join-Path $evidence "$side-$($project.Name)-$config.command.txt"), ('msbuild ' + ($arguments -join ' ')))
            & msbuild @arguments *> $log
            if ($LASTEXITCODE -ne 0) { Get-Content $log | Write-Host; throw "$side $($project.Name) $config build failed: $LASTEXITCODE" }
            $propertyNames = 'OutputType,Platform,PlatformTarget,Prefer32Bit,DefineConstants,LangVersion,DebugType,Optimize,Deterministic,OutputPath,TargetFrameworkVersion'
            $evaluation = & msbuild $path -nologo "-getProperty:$propertyNames" "-p:Configuration=$config" "-p:Platform=$($project.Platform)"
            if ($LASTEXITCODE -ne 0) { throw "$side $($project.Name) $config property evaluation failed" }
            [IO.File]::WriteAllText((Join-Path $evidence "$side-$($project.Name)-$config.properties.json"), ($evaluation -join "`n"), [Text.UTF8Encoding]::new($false))
            $itemEvaluation = & msbuild $path -nologo '-getItem:Compile' "-p:Configuration=$config" "-p:Platform=$($project.Platform)"
            if ($LASTEXITCODE -ne 0) { throw "$side $($project.Name) $config compile item evaluation failed" }
            $items = ($itemEvaluation -join "`n" | ConvertFrom-Json).Items.Compile
            $projectDir = Split-Path -Parent $path
            $compileFiles = @($items | ForEach-Object { [IO.Path]::GetRelativePath($projectDir, $_.FullPath).Replace('\', '/') })
            [IO.File]::WriteAllLines((Join-Path $evidence "$side-$($project.Name)-$config.compile.txt"), [string[]]$compileFiles, [Text.UTF8Encoding]::new($false))
            $exe = Join-Path $output $project.Exe
            if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) { throw "Missing executable: $exe" }
            & (Join-Path $root '.github/scripts/Get-SdkBinaryMetadata.ps1') -Path $exe -Output (Join-Path $evidence "$side-$($project.Name)-$config.metadata.json")
        }
        $baseOut = Join-Path $evidence "baseline/$($project.Name)/$config"
        $candidateOut = Join-Path $evidence "candidate/$($project.Name)/$config"
        $filter = { $_.Name -ne $project.Exe -and $_.Extension -ne '.pdb' }
        $a = @(Manifest $baseOut $filter); $b = @(Manifest $candidateOut $filter)
        [IO.File]::WriteAllLines((Join-Path $evidence "baseline-$($project.Name)-$config.files.sha256"), $a)
        [IO.File]::WriteAllLines((Join-Path $evidence "candidate-$($project.Name)-$config.files.sha256"), $b)
        Check-Same $a $b "$($project.Name) $config runtime closure differs"
        $baselineCompile = @(Get-Content -LiteralPath (Join-Path $evidence "baseline-$($project.Name)-$config.compile.txt"))
        $candidateCompile = @(Get-Content -LiteralPath (Join-Path $evidence "candidate-$($project.Name)-$config.compile.txt"))
        if ($baselineCompile.Count -eq 0 -or $baselineCompile.Count -ne $candidateCompile.Count) { throw "$($project.Name) $config compile item count differs" }
        for ($i = 0; $i -lt $baselineCompile.Count; $i++) {
            if ($baselineCompile[$i] -cne $candidateCompile[$i]) { throw "$($project.Name) $config compile item order differs at index $i" }
        }
        $leftProps = (Get-Content -Raw (Join-Path $evidence "baseline-$($project.Name)-$config.properties.json") | ConvertFrom-Json).Properties
        $rightProps = (Get-Content -Raw (Join-Path $evidence "candidate-$($project.Name)-$config.properties.json") | ConvertFrom-Json).Properties
        foreach ($key in 'OutputType','Platform','PlatformTarget','DefineConstants','LangVersion','DebugType','OutputPath','TargetFrameworkVersion') {
            if ($leftProps.$key -ne $rightProps.$key) { throw "$($project.Name) $config property $key differs: $($leftProps.$key) vs $($rightProps.$key)" }
        }
        $expectedPlatformDifference = $project.Name -eq 'Classic' -or ($project.Name -eq 'Harvester' -and $config -eq 'Test')
        $expectedBaselinePreference = if ($project.Name -eq 'Parser' -or $expectedPlatformDifference) { 'true' } else { 'false' }
        if ($leftProps.Prefer32Bit -ne $expectedBaselinePreference -or $rightProps.Prefer32Bit -ne 'false') {
            throw "$($project.Name) $config unexpected Prefer32Bit: baseline=$($leftProps.Prefer32Bit), candidate=$($rightProps.Prefer32Bit)"
        }
        Write-Host "$($project.Name) $config Prefer32Bit baseline=$($leftProps.Prefer32Bit) candidate=$($rightProps.Prefer32Bit)"
        foreach ($key in 'Optimize','Deterministic') {
            $baselineEnabled = $leftProps.$key -eq 'true'
            $candidateEnabled = $rightProps.$key -eq 'true'
            if ($baselineEnabled -ne $candidateEnabled) { throw "$($project.Name) $config boolean property $key differs" }
        }
        $left = Get-Content -Raw (Join-Path $evidence "baseline-$($project.Name)-$config.metadata.json") | ConvertFrom-Json
        $right = Get-Content -Raw (Join-Path $evidence "candidate-$($project.Name)-$config.metadata.json") | ConvertFrom-Json
        Write-Host "$($project.Name) $config exe SHA256 baseline=$($left.sha256) candidate=$($right.sha256)"
        $expectedMachine = if ($project.Platform -eq 'x64') { 'Amd64' } else { 'I386' }
        $expectedMagic = if ($project.Platform -eq 'x64') { 'PE32Plus' } else { 'PE32' }
        if ($left.contract.machine -ne $expectedMachine -or $left.contract.peMagic -ne $expectedMagic -or
            $left.contract.assemblyVersion -ne '1.0.0.0' -or $left.contract.fileVersion -ne '1.0.0.0' -or
            $left.contract.assemblyName -ne [IO.Path]::GetFileNameWithoutExtension($project.Exe)) { throw "Unexpected baseline platform or assembly identity: $($project.Name) $config" }
        $baselineFlags = [int]$left.contract.corFlags
        $candidateFlags = [int]$right.contract.corFlags
        $expectedBaselineFlags = if ($expectedPlatformDifference) { 0x20003 } else { 0x1 }
        if ($baselineFlags -ne $expectedBaselineFlags -or $candidateFlags -ne 0x1) {
            throw "$($project.Name) $config unexpected CLR flags: baseline=$baselineFlags, candidate=$candidateFlags"
        }
        $leftContract = $left.contract | ConvertTo-Json -Depth 30 -Compress
        $rightContract = $right.contract | ConvertTo-Json -Depth 30 -Compress
        $rawContractEqual = $leftContract -ceq $rightContract
        if ($expectedPlatformDifference) {
            # Only the verified Prefer32Bit CLR flags are intentionally different.
            $left.contract.PSObject.Properties.Remove('corFlags')
            $right.contract.PSObject.Properties.Remove('corFlags')
            $leftContract = $left.contract | ConvertTo-Json -Depth 30 -Compress
            $rightContract = $right.contract | ConvertTo-Json -Depth 30 -Compress
        }
        $sameContract = $leftContract -ceq $rightContract
        $result.comparisons += @{ project=$project.Name; configuration=$config; baselineSha256=$left.sha256; candidateSha256=$right.sha256; rawHashEqual=($left.sha256 -eq $right.sha256); rawContractEqual=$rawContractEqual; expectedPlatformDifference=$expectedPlatformDifference; contractEqual=$sameContract; baselineCorFlags=$baselineFlags; candidateCorFlags=$candidateFlags; baselinePrefer32Bit=$leftProps.Prefer32Bit; candidatePrefer32Bit=$rightProps.Prefer32Bit }
        if (-not $sameContract) { throw "$($project.Name) $config PE contract or raw method IL differs; inspect metadata reports" }
    }
}
$fixtureScenarios = @(
    @{ Name='harvester'; Project=$projects[1]; Configuration='Release'; Mode='harvester'; BaselineBits=64; CandidateBits=64 },
    @{ Name='harvester-test'; Project=$projects[1]; Configuration='Test'; Mode='harvester'; BaselineBits=32; CandidateBits=64 },
    @{ Name='classic'; Project=$projects[2]; Configuration='Release'; Mode='classic'; BaselineBits=32; CandidateBits=64 }
)
foreach ($side in 'baseline','candidate') {
    foreach ($scenario in $fixtureScenarios) {
        $project = $scenario.Project
        $exe = Join-Path $evidence "$side/$($project.Name)/$($scenario.Configuration)/$($project.Exe)"
        $dir = Join-Path $evidence "fixtures/$side/$($scenario.Name)"
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        $fixture = Join-Path $root '.github/scripts/Invoke-SdkFixture.ps1'
        $args = '-NoProfile -NonInteractive -File "{0}" -Mode {1} -Executable "{2}" -Directory "{3}"' -f $fixture, $scenario.Mode, $exe, $dir
        $expectedHostBits = if ($side -eq 'baseline') { $scenario.BaselineBits } else { $scenario.CandidateBits }
        $hostExe = if ($expectedHostBits -eq 32) { Join-Path $env:WINDIR 'SysWOW64/WindowsPowerShell/v1.0/powershell.exe' } else { Join-Path $env:WINDIR 'System32/WindowsPowerShell/v1.0/powershell.exe' }
        $label = "$side-$($scenario.Name)"
        Run-Process $hostExe $args $dir $label
        $hostLog = Get-Content -Raw (Join-Path $evidence "$label.stdout.log")
        if ($hostLog -notmatch "Fixture host architecture: $expectedHostBits-bit") { throw "Unexpected $label fixture host architecture" }
        $result.processes[-1].hostArchitecture = "$expectedHostBits-bit"
    }
    $dir = Join-Path $evidence "fixtures/$side/compare"
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
    [IO.File]::WriteAllText((Join-Path $dir 'itemDB-01.json'), '{"items":[{"itemID":1001,"name":"Old"},{"itemID":1002,"name":"Missing"}]}')
    [IO.File]::WriteAllText((Join-Path $dir 'itemDB-02.json'), '{"items":[{"itemID":1001,"name":"New"},{"itemID":1003,"name":"Added"}]}')
    $exe = Join-Path $evidence "$side/Compare/Release/Item DB Compare Tool.exe"
    Run-Process $exe 'itemDB' $dir "$side-compare"
    $log = Get-Content -Raw (Join-Path $evidence "$side-compare.stdout.log")
    if ($log -match 'Exception Comparing:|Could not read') { throw "$side Compare logged an error" }
    foreach ($entry in @(@('itemDB-02-DIFF.json',@(1001,1003)), @('itemDB-02-MISS.json',@(1002)), @('itemDB-FULL.json',@(1001,1002,1003)))) {
        $file = Join-Path $dir $entry[0]
        if (-not (Test-Path -LiteralPath $file) -or (Get-Item -LiteralPath $file).Length -eq 0) { throw "Missing compare output $file" }
        $actual = @((Get-Content -Raw $file | ConvertFrom-Json).items | ForEach-Object { $_.itemID } | Sort-Object)
        if (Compare-Object $entry[1] $actual) { throw "Unexpected IDs in $file" }
    }
}
foreach ($fixture in @(@('harvester',@('roundtrip.json')), @('harvester-test',@('roundtrip.json')), @('classic',@('RAW_classicItemDB.json','classicItemIDs.json','classicItemDB.json')), @('compare',@('itemDB-02-DIFF.json','itemDB-02-MISS.json','itemDB-FULL.json')))) {
    foreach ($file in $fixture[1]) {
        $a = Join-Path $evidence "fixtures/baseline/$($fixture[0])/$file"
        $b = Join-Path $evidence "fixtures/candidate/$($fixture[0])/$file"
        if ((Get-FileHash -LiteralPath $a).Hash -ne (Get-FileHash -LiteralPath $b).Hash) { throw "$($fixture[0]) output differs: $file" }
    }
}
$result.fixturesPassed = $true
Write-Host 'Harvester validation covers MiniJSON only; online API and harvest/parse CLI were not exercised.'
$basePackage = Join-Path $env:RUNNER_TEMP 'baseline-parser'
$candidatePackage = Join-Path $env:RUNNER_TEMP 'contributor-tools'
New-Item -ItemType Directory -Path $basePackage, $candidatePackage -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $evidence 'baseline/Parser/Release') -Destination (Join-Path $basePackage 'Parser') -Recurse
Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Parser/Release') -Destination (Join-Path $candidatePackage 'Parser') -Recurse
Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Harvester/Release') -Destination (Join-Path $candidatePackage 'BlizzardAPIHarvester') -Recurse
Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Classic/Release') -Destination (Join-Path $candidatePackage 'ClassicItemDetector') -Recurse
Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Compare/Release') -Destination (Join-Path $candidatePackage 'ItemDBCompareTool') -Recurse
Copy-Item -LiteralPath (Join-Path $evidence 'source.sha256') -Destination (Join-Path $basePackage 'source.sha256')
$info = @{ commit=$env:GITHUB_SHA; baselineCommit='0ab01b14d7f262744b5c4e64d6df06206052ba6a'; packages=$packages }
foreach ($dir in $basePackage, $candidatePackage) { [IO.File]::WriteAllText((Join-Path $dir 'build-info.json'), ($info | ConvertTo-Json -Depth 5)) }

$result.passed = $true
} catch {
    $result.error = $_.Exception.ToString()
    throw
} finally {
    [IO.File]::WriteAllText((Join-Path $evidence 'result.json'), ($result | ConvertTo-Json -Depth 10), [Text.UTF8Encoding]::new($false))
}
