$ErrorActionPreference = 'Stop'
$root = $env:GITHUB_WORKSPACE
$baselineRoot = Join-Path $root 'baseline'
$evidence = Join-Path $env:RUNNER_TEMP 'sdk-validation'
$scratch = Join-Path $env:RUNNER_TEMP 'parser-implicit-trial'
New-Item -ItemType Directory -Path $evidence -Force | Out-Null
$result = [ordered]@{ commit=$env:GITHUB_SHA; baselineCommit='2867ce196198c09cb26f5a717829a4221ea9df94'; configurations=@(); passed=$false; error=$null }
function Copy-Tree([string]$source, [string]$destination) {
    New-Item -ItemType Directory -Path $destination -Force | Out-Null
    & robocopy $source $destination /E /XD obj bin /R:1 /W:1 /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -gt 7) { throw "Copy failed: $source ($LASTEXITCODE)" }
}
function Get-Manifest([string]$directory, [bool]$excludeProject) {
    $base = [IO.Path]::GetFullPath($directory).TrimEnd('\')
    @(Get-ChildItem -LiteralPath $base -File -Recurse -Force | Where-Object { -not $excludeProject -or $_.FullName -cne (Join-Path $base 'Parser.csproj') } | Sort-Object FullName | ForEach-Object {
        '{0}  {1}' -f (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant(), $_.FullName.Substring($base.Length + 1).Replace('\', '/')
    })
}
function Assert-Manifest([string[]]$a, [string[]]$b, [string]$message) {
    if ($a.Count -eq 0 -or $a.Count -ne $b.Count -or (Compare-Object $a $b -CaseSensitive)) { throw $message }
}
function Get-StringHash([string]$value) {
    [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData([Text.Encoding]::UTF8.GetBytes($value))).ToLowerInvariant()
}
function Get-UniqueSet([string[]]$values, [string]$label) {
    $set = [Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
    foreach ($value in $values) {
        if ([string]::IsNullOrEmpty($value) -or -not $set.Add($value)) { throw "Empty or duplicate entry in ${label}: $value" }
    }
    return ,$set
}
function Invoke-Probe([string]$executable, [string]$output, [string]$label) {
    $hostExe = Join-Path $env:WINDIR 'System32/WindowsPowerShell/v1.0/powershell.exe'
    $probe = Join-Path $root '.github/scripts/Invoke-ParserReflectionProbe.ps1'
    $probeArgs = '-NoProfile -NonInteractive -File "{0}" -Executable "{1}" -Output "{2}"' -f $probe, $executable, $output
    $stdout = Join-Path $evidence "$label.reflection.stdout.log"
    $stderr = Join-Path $evidence "$label.reflection.stderr.log"
    $process = Start-Process -FilePath $hostExe -ArgumentList $probeArgs -WorkingDirectory ([IO.Path]::GetDirectoryName($executable)) -RedirectStandardOutput $stdout -RedirectStandardError $stderr -PassThru -WindowStyle Hidden
    $handle = $process.Handle
    if (-not $process.WaitForExit(120000)) { $process.Kill(); $process.WaitForExit(); throw "$label reflection probe timed out" }
    $process.WaitForExit()
    if ($null -eq $process.ExitCode -or $process.ExitCode -ne 0) { throw "$label reflection probe exit code: $($process.ExitCode)" }
    if ((Get-Item -LiteralPath $stderr).Length -ne 0) { throw "$label reflection probe wrote to stderr" }
    if (-not (Test-Path -LiteralPath $output -PathType Leaf)) { throw "$label reflection output missing" }
}
try {
    if (Test-Path -LiteralPath $scratch) { throw "Scratch directory already exists: $scratch" }
    foreach ($side in 'baseline','candidate') {
        $tree = if ($side -eq 'baseline') { $baselineRoot } else { $root }
        $source = Join-Path $tree '.contrib/src/Parser'
        $copy = Join-Path $scratch "$side/Parser"
        Copy-Tree $source $copy
        $editor = Join-Path $tree '.editorconfig'
        if (-not (Test-Path -LiteralPath $editor -PathType Leaf)) { throw "Missing .editorconfig: $side" }
        Copy-Item -LiteralPath $editor -Destination (Join-Path $scratch "$side/.editorconfig")
    }
    $baseSource = Join-Path $scratch 'baseline/Parser'
    $candidateSource = Join-Path $scratch 'candidate/Parser'
    $baseManifest = @(Get-Manifest $baseSource $false)
    $candidateManifest = @(Get-Manifest $candidateSource $false)
    Assert-Manifest $baseManifest $candidateManifest 'Original Parser sources differ'
    if ((Get-FileHash -LiteralPath (Join-Path $scratch 'baseline/.editorconfig')).Hash -ne (Get-FileHash -LiteralPath (Join-Path $scratch 'candidate/.editorconfig')).Hash) { throw 'Editor configuration differs' }
    [IO.File]::WriteAllLines((Join-Path $evidence 'source.sha256'), [string[]]$baseManifest, [Text.UTF8Encoding]::new($false))

    $project = Join-Path $candidateSource 'Parser.csproj'
    $before = [IO.File]::ReadAllBytes($project)
    if ($before.Length -lt 3 -or $before[0] -ne 0xef -or $before[1] -ne 0xbb -or $before[2] -ne 0xbf) { throw 'Parser project must have UTF-8 BOM' }
    $utf8 = [Text.UTF8Encoding]::new($false, $true)
    $text = $utf8.GetString($before, 3, $before.Length - 3)
    if ($text -match '(?<!\r)\n' -or $text -match '\r(?!\n)') { throw 'Parser project must use CRLF' }
    $propertyLine = '    <EnableDefaultCompileItems>false</EnableDefaultCompileItems>'
    $blockLines = @(
        '  <!-- Preserve compile order for runtime module discovery. -->',
        '  <ItemGroup>',
        '    <Compile Include="*.cs" />',
        '    <Compile Include="DB\**\*.cs" />',
        '    <Compile Include="Export\**\*.cs" />',
        '    <Compile Include="FieldTypes\**\*.cs" />',
        '    <Compile Include="Framework\**\*.cs" />',
        '    <Compile Include="Harvesters\**\*.cs" />',
        '    <Compile Include="Properties\AssemblyInfo.cs" />',
        '  </ItemGroup>'
    )
    $property = $propertyLine + "`r`n"
    $block = ($blockLines -join "`r`n") + "`r`n"
    if (([regex]::Matches($text, [regex]::Escape($property))).Count -ne 1 -or ([regex]::Matches($text, [regex]::Escape($block))).Count -ne 1 -or $blockLines.Count -ne 10) { throw 'Unexpected Parser project layout' }
    $lines = [regex]::Split($text, "`r`n")
    $propertyLineNumber = [array]::IndexOf($lines, $propertyLine) + 1
    $blockLineNumber = [array]::IndexOf($lines, $blockLines[0]) + 1
    if ($propertyLineNumber -le 0 -or $blockLineNumber -le $propertyLineNumber) { throw 'Unexpected Parser project line positions' }
    $updated = $text.Replace($property, '').Replace($block, '')
    [byte[]]$after = @([byte]0xef,[byte]0xbb,[byte]0xbf) + $utf8.GetBytes($updated)
    [IO.File]::WriteAllBytes((Join-Path $evidence 'Parser.csproj.before'), $before)
    [IO.File]::WriteAllBytes((Join-Path $evidence 'Parser.csproj.after'), $after)
    [IO.File]::WriteAllBytes($project, $after)
    $patch = @('--- a/Parser.csproj','+++ b/Parser.csproj',("@@ -{0},1 +{1},0 @@" -f $propertyLineNumber, ($propertyLineNumber - 1)), ('-' + $propertyLine), ("@@ -{0},10 +{1},0 @@" -f $blockLineNumber, ($blockLineNumber - 2))) + @($blockLines | ForEach-Object { '-' + $_ })
    [IO.File]::WriteAllText((Join-Path $evidence 'Parser.csproj.patch'), (($patch -join "`r`n") + "`r`n"), [Text.UTF8Encoding]::new($false))
    $projectReport = [ordered]@{ beforeSha256=(Get-FileHash -LiteralPath (Join-Path $evidence 'Parser.csproj.before')).Hash.ToLowerInvariant(); afterSha256=(Get-FileHash -LiteralPath $project).Hash.ToLowerInvariant(); deletedLines=11; encoding='UTF-8 BOM'; lineEndings='CRLF' }
    [IO.File]::WriteAllText((Join-Path $evidence 'project-patch.json'), ($projectReport | ConvertTo-Json -Depth 5), [Text.UTF8Encoding]::new($false))
    Assert-Manifest @(Get-Manifest $baseSource $true) @(Get-Manifest $candidateSource $true) 'Non-project Parser sources differ'

    foreach ($configuration in 'Debug','Release') {
        foreach ($side in 'baseline','candidate') {
            $source = if ($side -eq 'baseline') { $baseSource } else { $candidateSource }
            $project = Join-Path $source 'Parser.csproj'
            $output = Join-Path $evidence "$side/Parser/$configuration"
            New-Item -ItemType Directory -Path $output -Force | Out-Null
            $outPath = $output.Replace('\','/') + '/'
            $buildArguments = @($project, '-restore', '-t:Rebuild', "-p:Configuration=$configuration", '-p:Platform=x64', "-p:OutputPath=$outPath", "-p:OutDir=$outPath", "-bl:$(Join-Path $evidence "$side-$configuration.binlog")")
            [IO.File]::WriteAllText((Join-Path $evidence "$side-$configuration.command.txt"), ('msbuild ' + ($buildArguments -join ' ')), [Text.UTF8Encoding]::new($false))
            & msbuild @buildArguments *> (Join-Path $evidence "$side-$configuration.build.log")
            if ($LASTEXITCODE -ne 0) { throw "$side $configuration build failed: $LASTEXITCODE" }
            $properties = & msbuild $project -nologo '-t:AddImplicitDefineConstants' '-getProperty:OutputType,Platform,PlatformTarget,Prefer32Bit,DefineConstants,LangVersion,DebugType,Optimize,Deterministic,OutputPath,TargetFrameworkVersion' "-p:Configuration=$configuration" '-p:Platform=x64'
            if ($LASTEXITCODE -ne 0) { throw "$side $configuration properties failed" }
            [IO.File]::WriteAllText((Join-Path $evidence "$side-$configuration.properties.json"), ($properties -join "`n"), [Text.UTF8Encoding]::new($false))
            $itemJson = & msbuild $project -nologo '-getItem:Compile' "-p:Configuration=$configuration" '-p:Platform=x64'
            if ($LASTEXITCODE -ne 0) { throw "$side $configuration Compile evaluation failed" }
            $items = ($itemJson -join "`n" | ConvertFrom-Json).Items.Compile
            $paths = @($items | ForEach-Object { [IO.Path]::GetRelativePath($source, $_.FullPath).Replace('\','/') })
            [IO.File]::WriteAllLines((Join-Path $evidence "$side-$configuration.compile.txt"), [string[]]$paths, [Text.UTF8Encoding]::new($false))
            $exe = Join-Path $output 'Parser.exe'
            if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) { throw "$side $configuration Parser.exe missing" }
            & (Join-Path $root '.github/scripts/Get-SdkBinaryMetadata.ps1') -Path $exe -Output (Join-Path $evidence "$side-$configuration.metadata.json")
            Invoke-Probe $exe (Join-Path $evidence "$side-$configuration.reflection.json") "$side-$configuration"
        }
        $left = @(Get-Content -LiteralPath (Join-Path $evidence "baseline-$configuration.compile.txt"))
        $right = @(Get-Content -LiteralPath (Join-Path $evidence "candidate-$configuration.compile.txt"))
        $leftSet = Get-UniqueSet $left 'baseline Compile'; $rightSet = Get-UniqueSet $right 'candidate Compile'
        if ($left.Count -ne 94 -or $right.Count -ne 94 -or -not $leftSet.SetEquals($rightSet)) { throw "$configuration Compile file set differs" }
        $moves = @(); for ($i=0; $i -lt $left.Count; $i++) { $newIndex = [array]::IndexOf($right, $left[$i]); if ($newIndex -ne $i) { $moves += [ordered]@{ path=$left[$i]; baselineIndex=$i+1; candidateIndex=$newIndex+1 } } }
        [IO.File]::WriteAllText((Join-Path $evidence "$configuration.compile-order-differences.json"), (ConvertTo-Json -InputObject $moves -Depth 5), [Text.UTF8Encoding]::new($false))
        $baseOut = Join-Path $evidence "baseline/Parser/$configuration"; $candidateOut = Join-Path $evidence "candidate/Parser/$configuration"
        $baseFiles = @(Get-Manifest $baseOut $false | Where-Object { $_.Substring(66) -ne 'Parser.exe' -and -not $_.EndsWith('.pdb') })
        $candidateFiles = @(Get-Manifest $candidateOut $false | Where-Object { $_.Substring(66) -ne 'Parser.exe' -and -not $_.EndsWith('.pdb') })
        [IO.File]::WriteAllLines((Join-Path $evidence "baseline-$configuration.runtime.sha256"), [string[]]$baseFiles, [Text.UTF8Encoding]::new($false))
        [IO.File]::WriteAllLines((Join-Path $evidence "candidate-$configuration.runtime.sha256"), [string[]]$candidateFiles, [Text.UTF8Encoding]::new($false))
        Assert-Manifest $baseFiles $candidateFiles "$configuration runtime closure differs"
        $baseProps = (Get-Content -Raw (Join-Path $evidence "baseline-$configuration.properties.json") | ConvertFrom-Json).Properties
        $candidateProps = (Get-Content -Raw (Join-Path $evidence "candidate-$configuration.properties.json") | ConvertFrom-Json).Properties
        if (($baseProps | ConvertTo-Json -Compress) -cne ($candidateProps | ConvertTo-Json -Compress)) { throw "$configuration build properties differ" }
        $base = Get-Content -Raw (Join-Path $evidence "baseline-$configuration.metadata.json") | ConvertFrom-Json
        $candidate = Get-Content -Raw (Join-Path $evidence "candidate-$configuration.metadata.json") | ConvertFrom-Json
        foreach ($field in 'machine','peMagic','subsystem','corFlags','assemblyName','assemblyVersion','assemblyCulture','publicKey','fileVersion','productVersion','targetFramework','nativeResource','managedResource') {
            $a = $base.contract.$field | ConvertTo-Json -Depth 20 -Compress
            $b = $candidate.contract.$field | ConvertTo-Json -Depth 20 -Compress
            if ($a -cne $b) { throw "$configuration binary contract differs: $field" }
        }
        if ($base.contract.machine -ne 'Amd64' -or $base.contract.peMagic -ne 'PE32Plus' -or $base.contract.corFlags -ne 1 -or $base.contract.assemblyName -ne 'Parser' -or $base.contract.assemblyVersion -ne '1.0.0.0' -or $base.contract.targetFramework -ne '.NETFramework,Version=v4.8') { throw "$configuration unexpected Parser identity/platform" }
        $baseReferenceRows = @($base.contract.references | ForEach-Object { [ordered]@{ name=$_.name; version=$_.version; culture=$_.culture; flags=$_.flags; publicKeyOrToken=$_.publicKeyOrToken } | ConvertTo-Json -Compress })
        $candidateReferenceRows = @($candidate.contract.references | ForEach-Object { [ordered]@{ name=$_.name; version=$_.version; culture=$_.culture; flags=$_.flags; publicKeyOrToken=$_.publicKeyOrToken } | ConvertTo-Json -Compress })
        $baseReferences = Get-UniqueSet $baseReferenceRows 'baseline assembly references'
        $candidateReferences = Get-UniqueSet $candidateReferenceRows 'candidate assembly references'
        if ($baseReferences.Count -eq 0 -or -not $baseReferences.SetEquals($candidateReferences)) { throw "$configuration assembly references differ" }
        $baseRva = @($base.contract.fields | Where-Object { $_.initializedData } | Sort-Object name | Select-Object name,attributes,initializedData)
        $candidateRva = @($candidate.contract.fields | Where-Object { $_.initializedData } | Sort-Object name | Select-Object name,attributes,initializedData)
        if ($baseRva.Count -eq 0 -or $candidateRva.Count -eq 0) { throw "$configuration initialized field data missing" }
        $null = Get-UniqueSet @($baseRva | ForEach-Object { $_.name }) 'baseline initialized field names'
        $null = Get-UniqueSet @($candidateRva | ForEach-Object { $_.name }) 'candidate initialized field names'
        if ((ConvertTo-Json -InputObject $baseRva -Depth 10 -Compress) -cne (ConvertTo-Json -InputObject $candidateRva -Depth 10 -Compress)) { throw "$configuration initialized field data differs" }
        $baseReflection = Get-Content -Raw (Join-Path $evidence "baseline-$configuration.reflection.json") | ConvertFrom-Json
        $candidateReflection = Get-Content -Raw (Join-Path $evidence "candidate-$configuration.reflection.json") | ConvertFrom-Json
        foreach ($reflection in $baseReflection,$candidateReflection) {
            if ($reflection.hostArchitecture -ne 64 -or $reflection.entryPoint -cne 'ATT.Program.Main(System.String[])->System.Int32') { throw "$configuration reflection host or entry point differs" }
            $allSet = Get-UniqueSet @($reflection.allTypes) 'reflected types'
            $moduleNames = Get-UniqueSet @($reflection.modules | ForEach-Object { $_.name }) 'module names'
            if ($moduleNames.Count -ne 27 -or $moduleNames.Count -ne $reflection.resolvedModules.Count) { throw "$configuration module discovery incomplete" }
            $discovered = @($reflection.modules | Sort-Object name -CaseSensitive | ForEach-Object { [ordered]@{ name=$_.name; fullName=$_.fullName } })
            $resolved = @($reflection.resolvedModules | Sort-Object name -CaseSensitive | ForEach-Object { [ordered]@{ name=$_.name; fullName=$_.fullName } })
            if ((ConvertTo-Json -InputObject $discovered -Depth 10 -Compress) -cne (ConvertTo-Json -InputObject $resolved -Depth 10 -Compress)) { throw "$configuration module registry does not match discovered types" }
        }
        $allLeft = Get-UniqueSet @($baseReflection.allTypes) 'baseline reflected types'
        $allRight = Get-UniqueSet @($candidateReflection.allTypes) 'candidate reflected types'
        if (-not $allLeft.SetEquals($allRight)) { throw "$configuration reflected type set differs" }
        $baseModules = @($baseReflection.modules | Sort-Object fullName -CaseSensitive)
        $candidateModules = @($candidateReflection.modules | Sort-Object fullName -CaseSensitive)
        if (($baseModules | ConvertTo-Json -Depth 20 -Compress) -cne ($candidateModules | ConvertTo-Json -Depth 20 -Compress)) { throw "$configuration module property contract differs" }
        if (($baseReflection.resolvedModules | ConvertTo-Json -Depth 20 -Compress) -cne ($candidateReflection.resolvedModules | ConvertTo-Json -Depth 20 -Compress)) { throw "$configuration resolved module map differs" }
        $typeOrderEqual = ($baseReflection.allTypes -join "`n") -ceq ($candidateReflection.allTypes -join "`n")
        $moduleOrderEqual = (@($baseReflection.modules | ForEach-Object { $_.fullName }) -join "`n") -ceq (@($candidateReflection.modules | ForEach-Object { $_.fullName }) -join "`n")
        $baseMethods = $base.contract.methods | ConvertTo-Json -Depth 30 -Compress
        $candidateMethods = $candidate.contract.methods | ConvertTo-Json -Depth 30 -Compress
        $result.configurations += [ordered]@{
            configuration=$configuration; compileCount=$left.Count; compileOrderEqual=($moves.Count -eq 0); compileMoves=$moves.Count
            baselineSha256=$base.sha256; candidateSha256=$candidate.sha256; rawHashEqual=$base.sha256 -eq $candidate.sha256
            baselineMetadataSha256=$base.contract.normalizedMetadataSha256; candidateMetadataSha256=$candidate.contract.normalizedMetadataSha256
            rawMetadataEqual=$base.contract.normalizedMetadataSha256 -eq $candidate.contract.normalizedMetadataSha256
            baselineRawMethodsSha256=Get-StringHash $baseMethods; candidateRawMethodsSha256=Get-StringHash $candidateMethods
            rawMethodsEqual=$baseMethods -ceq $candidateMethods; reflectedTypeOrderEqual=$typeOrderEqual; moduleOrderEqual=$moduleOrderEqual
            moduleCount=$baseModules.Count; platformAndReflectionContractsEqual=$true
        }
    }
    $baselinePackage = Join-Path $env:RUNNER_TEMP 'baseline-parser'; $candidatePackage = Join-Path $env:RUNNER_TEMP 'contributor-tools'
    New-Item -ItemType Directory -Path $baselinePackage,$candidatePackage -Force | Out-Null
    Copy-Item -LiteralPath (Join-Path $evidence 'baseline/Parser/Release') -Destination (Join-Path $baselinePackage 'Parser') -Recurse
    Copy-Item -LiteralPath (Join-Path $evidence 'candidate/Parser/Release') -Destination (Join-Path $candidatePackage 'Parser') -Recurse
    Copy-Item -LiteralPath (Join-Path $evidence 'source.sha256') -Destination (Join-Path $baselinePackage 'source.sha256')
    $info = @{commit=$env:GITHUB_SHA; baselineCommit=$result.baselineCommit; packages=@{Csv='[2.0.245]';KeraLua='[1.4.11]';NLua='[1.7.9]'}}
    foreach ($directory in $baselinePackage,$candidatePackage) { [IO.File]::WriteAllText((Join-Path $directory 'build-info.json'), ($info | ConvertTo-Json -Depth 5), [Text.UTF8Encoding]::new($false)) }
    $result.passed = $true
} catch { $result.error = $_.Exception.ToString(); throw }
finally { [IO.File]::WriteAllText((Join-Path $evidence 'result.json'), ($result | ConvertTo-Json -Depth 10), [Text.UTF8Encoding]::new($false)) }
