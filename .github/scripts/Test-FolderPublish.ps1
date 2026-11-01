$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Reflection.Metadata
$work = Join-Path $env:RUNNER_TEMP 'att-folder-publish'
$evidence = Join-Path $env:RUNNER_TEMP 'att-folder-publish-evidence'
$baseline = Join-Path $env:RUNNER_TEMP 'att-folder-baseline'
$source = Join-Path $env:RUNNER_TEMP 'att-folder-baseline-src'
New-Item -ItemType Directory -Force -Path $evidence | Out-Null
$result = [ordered]@{ commit=$env:GITHUB_SHA; passed=$false; outputs=@{}; fixtures=@(); error=$null }
function Get-CheckoutManifest {
    $root = $env:GITHUB_WORKSPACE
    $files = @(
        Get-ChildItem -LiteralPath (Join-Path $root '.contrib/.tools') -File -Recurse -Force
        Get-ChildItem -LiteralPath (Join-Path $root '.contrib/Harvesters') -File -Recurse -Force |
            Where-Object { $_.Extension -in '.exe', '.dll', '.config' }
        Get-ChildItem -LiteralPath (Join-Path $root '.contrib/src') -Filter '*.csproj' -File -Recurse -Force
    )
    @($files | Sort-Object FullName | ForEach-Object {
        '{0}  {1}' -f (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant(), $_.FullName.Substring($root.Length + 1).Replace('\','/')
    })
}
function Get-Pe([string]$Path) {
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) { throw "Missing PE: $Path" }
    $stream=[IO.File]::OpenRead($Path)
    try {
        $reader=[System.Reflection.PortableExecutable.PEReader]::new($stream)
        try {
            $h=$reader.PEHeaders
            $flags=if ($null -eq $h.CorHeader) { $null } else { [int]$h.CorHeader.Flags }
            return @{ machine=$h.CoffHeader.Machine.ToString(); corFlags=$flags; sha256=(Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant() }
        } finally { $reader.Dispose() }
    } finally { $stream.Dispose() }
}
function Assert-Pe([string]$Path,[string]$Kind) {
    $pe=Get-Pe $Path
    switch ($Kind) {
        'NativeX64' { if ($pe.machine -ne 'Amd64' -or $null -ne $pe.corFlags) { throw "Expected native x64: $Path" } }
        'ManagedX64' { if ($pe.machine -ne 'Amd64' -or $null -eq $pe.corFlags -or ($pe.corFlags -band 1) -eq 0) { throw "Expected managed x64: $Path" } }
        'ManagedAny' { if ($pe.machine -ne 'I386' -or $null -eq $pe.corFlags -or ($pe.corFlags -band 1) -eq 0 -or ($pe.corFlags -band 0x20002) -ne 0) { throw "Expected managed AnyCPU: $Path" } }
        default { throw "Unknown PE kind: $Kind" }
    }
    return $pe
}
function Assert-ArtifactSafe([string]$Root) {
    # These lists describe the entire expected output; unknown files or folders fail closed.
    $allowed=@{
        Parser=@('Parser.exe','Parser.exe.config','Parser.pdb','Parser.deps.json','Csv.dll','Csv.xml','KeraLua.dll','KeraLua.xml','NLua.dll','NLua.xml','lua54.dll','liblua54.dylib','liblua54.so')
        CSVCleaner=@('CSVCleaner.exe','CSVCleaner.dll','CSVCleaner.pdb','CSVCleaner.deps.json','CSVCleaner.runtimeconfig.json')
        Harvester=@('Blizzard API Harvester.exe','Blizzard API Harvester.exe.config','Blizzard API Harvester.pdb')
        ClassicItemDetector=@('Classic Item Detector.exe','Classic Item Detector.exe.config','Classic Item Detector.pdb')
        ItemDBCompareTool=@('Item DB Compare Tool.exe','Item DB Compare Tool.exe.config','Item DB Compare Tool.pdb')
    }
    foreach ($name in $allowed.Keys) {
        $dir=Join-Path $Root $name
        if (-not (Test-Path -LiteralPath $dir -PathType Container)) { throw "Missing publish folder: $name" }
        foreach ($item in @(Get-ChildItem -LiteralPath $dir -Force)) {
            if ($item.PSIsContainer -or $item.Name -notin $allowed[$name]) { throw "Unexpected publish artifact: $($item.FullName)" }
        }
    }
    foreach ($item in @(Get-ChildItem -LiteralPath $Root -Force)) {
        if ($item.Name -eq 'README.md' -and -not $item.PSIsContainer) { continue }
        if (-not $item.PSIsContainer -or $item.Name -notin $allowed.Keys) { throw "Unexpected publish root item: $($item.FullName)" }
    }
}
function Assert-Outputs([string]$Root) {
    $dirs=@{}
    foreach ($name in 'Parser','CSVCleaner','Harvester','ClassicItemDetector','ItemDBCompareTool') { $dirs[$name]=Join-Path $Root $name }
    foreach ($name in 'Parser.exe','Parser.exe.config','Csv.dll','KeraLua.dll','NLua.dll','lua54.dll') {
        if (-not (Test-Path -LiteralPath (Join-Path $dirs.Parser $name) -PathType Leaf)) { throw "Parser output missing $name" }
    }
    foreach ($tool in @(
        @{Dir=$dirs.Parser; Name='Parser.exe.config'},
        @{Dir=$dirs.Harvester; Name='Blizzard API Harvester.exe.config'},
        @{Dir=$dirs.ClassicItemDetector; Name='Classic Item Detector.exe.config'},
        @{Dir=$dirs.ItemDBCompareTool; Name='Item DB Compare Tool.exe.config'}
    )) {
        $configPath=Join-Path $tool.Dir $tool.Name
        if (-not (Test-Path -LiteralPath $configPath -PathType Leaf)) { throw "Missing config: $configPath" }
        [xml]$config=[IO.File]::ReadAllText($configPath)
        $supported=$config.configuration.startup.supportedRuntime
        if ($supported.version -ne 'v4.0' -or $supported.sku -ne '.NETFramework,Version=v4.8') { throw "Unexpected supportedRuntime configuration: $configPath" }
    }
    foreach ($name in 'CSVCleaner.exe','CSVCleaner.dll','CSVCleaner.deps.json','CSVCleaner.runtimeconfig.json') {
        if (-not (Test-Path -LiteralPath (Join-Path $dirs.CSVCleaner $name) -PathType Leaf)) { throw "CSVCleaner output missing $name" }
    }
    $runtime=Get-Content -LiteralPath (Join-Path $dirs.CSVCleaner 'CSVCleaner.runtimeconfig.json') -Raw | ConvertFrom-Json
    if ($runtime.runtimeOptions.tfm -ne 'net8.0' -or $runtime.runtimeOptions.framework.name -ne 'Microsoft.NETCore.App' -or $runtime.runtimeOptions.framework.version -notmatch '^8\.') { throw 'Unexpected CSVCleaner runtime config.' }
    return @{
        parser=Assert-Pe (Join-Path $dirs.Parser 'Parser.exe') 'ManagedX64'
        lua=Assert-Pe (Join-Path $dirs.Parser 'lua54.dll') 'NativeX64'
        cleanerHost=Assert-Pe (Join-Path $dirs.CSVCleaner 'CSVCleaner.exe') 'NativeX64'
        harvester=Assert-Pe (Join-Path $dirs.Harvester 'Blizzard API Harvester.exe') 'ManagedAny'
        classic=Assert-Pe (Join-Path $dirs.ClassicItemDetector 'Classic Item Detector.exe') 'ManagedAny'
        compare=Assert-Pe (Join-Path $dirs.ItemDBCompareTool 'Item DB Compare Tool.exe') 'ManagedAny'
    }
}
try {
    if ((Test-Path -LiteralPath $work) -or (Test-Path -LiteralPath $source) -or (Test-Path -LiteralPath $baseline)) { throw 'Expected fresh work directories.' }
    $checkoutBefore = @(Get-CheckoutManifest)
    if ($checkoutBefore.Count -eq 0) { throw 'Checkout file manifest is empty.' }
    [IO.File]::WriteAllLines((Join-Path $evidence 'checkout-before.log'), [string[]]$checkoutBefore)
    & pwsh -NoLogo -NoProfile -File (Join-Path $env:GITHUB_WORKSPACE '.contrib/src/Publish-Folders.ps1') -OutputRoot $work *> (Join-Path $evidence 'publish.log')
    if ($LASTEXITCODE -ne 0) { throw "Folder publication failed: $LASTEXITCODE" }
    $checkoutAfter = @(Get-CheckoutManifest)
    [IO.File]::WriteAllLines((Join-Path $evidence 'checkout-after.log'), [string[]]$checkoutAfter)
    if (Compare-Object $checkoutBefore $checkoutAfter) { throw 'Checkout tools or project files changed during publication.' }
    $result['checkoutFilesUnchanged'] = $true
    $result['checkoutFileCount'] = $checkoutBefore.Count
    $publish=Join-Path $work 'publish'
    $nugetRoot=if ($env:NUGET_PACKAGES) { $env:NUGET_PACKAGES } else { Join-Path $env:USERPROFILE '.nuget/packages' }
    $luaTargets=Join-Path $nugetRoot 'keralua/1.4.11/build/net46/KeraLua.targets'
    $result['keraluaTargetsCaptured']=Test-Path -LiteralPath $luaTargets -PathType Leaf
    if ($result.keraluaTargetsCaptured) { Copy-Item -LiteralPath $luaTargets -Destination (Join-Path $evidence 'keralua-1.4.11.targets.log') }
    $result['publishFileNames']=@(Get-ChildItem -LiteralPath $publish -File -Recurse -Force | Sort-Object FullName | ForEach-Object { $_.FullName.Substring($publish.Length+1).Replace('\','/') })
    Assert-ArtifactSafe $publish
    $result.outputs['publish']=Assert-Outputs $publish
    $manifest=foreach ($f in Get-ChildItem -LiteralPath $publish -Recurse -File -Force | Sort-Object FullName) {
        '{0} {1} {2}' -f (Get-FileHash -LiteralPath $f.FullName -Algorithm SHA256).Hash.ToLowerInvariant(),$f.Length,$f.FullName.Substring($publish.Length+1).Replace('\','/')
    }
    [IO.File]::WriteAllLines((Join-Path $evidence 'publish-manifest.log'),[string[]]$manifest)
    New-Item -ItemType Directory -Path $source -Force | Out-Null
    & robocopy (Join-Path $env:GITHUB_WORKSPACE '.contrib/src') $source /E /XD obj bin .vs /R:1 /W:1 /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -gt 7) { throw "Baseline source copy failed: $LASTEXITCODE" }
    $projects=@(
        @{Name='Parser'; Path='Parser/Parser.csproj'; Platform='x64'}
        @{Name='CSVCleaner'; Path='CSVCleaner/CSVCleaner.csproj'; Platform='x64'}
        @{Name='Harvester'; Path='Blizzard API Harvester/Blizzard API Harvester.csproj'; Platform='AnyCPU'}
        @{Name='ClassicItemDetector'; Path='Classic Item Detector/Classic Item Detector.csproj'; Platform='AnyCPU'}
        @{Name='ItemDBCompareTool'; Path='Item DB Compare Tool/Item DB Compare Tool.csproj'; Platform='AnyCPU'}
    )
    foreach ($project in $projects) {
        $args=@('build',(Join-Path $source $project.Path),'--configuration','Release','--output',(Join-Path $baseline $project.Name),"-p:Platform=$($project.Platform)")
        & dotnet @args *> (Join-Path $evidence ("build-"+$project.Name+'.log'))
        if ($LASTEXITCODE -ne 0) { throw "Baseline build failed: $($project.Name), exit $LASTEXITCODE" }
    }
    # The baseline Parser is uploaded separately for use by the parser matrix.
    # Apply the same closed list to it by reusing the Parser part of the validation below.
    $allowedParser=@('Parser.exe','Parser.exe.config','Parser.pdb','Parser.deps.json','Csv.dll','Csv.xml','KeraLua.dll','KeraLua.xml','NLua.dll','NLua.xml','lua54.dll','liblua54.dylib','liblua54.so')
    foreach ($item in @(Get-ChildItem -LiteralPath (Join-Path $baseline 'Parser') -Force)) {
        if ($item.PSIsContainer -or $item.Name -notin $allowedParser) { throw "Unexpected baseline Parser artifact: $($item.FullName)" }
    }
    $result.outputs['build']=Assert-Outputs $baseline
    . (Join-Path $env:GITHUB_WORKSPACE '.github/scripts/Test-FolderFixtures.ps1')
    foreach ($mode in 'build','publish') {
        $original=if ($mode -eq 'build') { $baseline } else { $publish }
        $root=Join-Path $env:RUNNER_TEMP ("att-folder-fixtures-"+$mode)
        New-Item -ItemType Directory -Path $root | Out-Null
        & robocopy $original $root /E /R:1 /W:1 /NFL /NDL /NJH /NJS /NP | Out-Null
        if ($LASTEXITCODE -gt 7) { throw "Fixture package copy failed: $mode ($LASTEXITCODE)" }
        $result.fixtures += Invoke-ToolFixtures -CSVCleanerDir (Join-Path $root 'CSVCleaner') -HarvesterDir (Join-Path $root 'Harvester') -ClassicDir (Join-Path $root 'ClassicItemDetector') -CompareDir (Join-Path $root 'ItemDBCompareTool') -Arch $mode -Evidence $evidence
    }
    # Stage the artifact only after fixture runs; never test against these copies.
    $artifact=Join-Path $env:RUNNER_TEMP 'att-folder-upload'
    New-Item -ItemType Directory -Path $artifact | Out-Null
    & robocopy $publish $artifact /E /R:1 /W:1 /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -gt 7) { throw "Artifact copy failed: $LASTEXITCODE" }
    $notice=@'
# Published contributor tools (CI artifact)

The five directories in this artifact contain published tools. Parser also
requires a repository checkout with its `.contrib/.db` data. Start the Parser
executable by absolute path with that checkout's `.contrib/.tools` as its
working directory. Parser can update repository data and generated output.

The following original README describes building from a source checkout; its
build paths are not the location of the folders in this downloaded artifact.

---

'@
    $readme=[IO.File]::ReadAllText((Join-Path $env:GITHUB_WORKSPACE '.contrib/src/README.md'))
    [IO.File]::WriteAllText((Join-Path $artifact 'README.md'),$notice+$readme,[Text.UTF8Encoding]::new($false))
    Assert-ArtifactSafe $artifact
    $result.passed=$true
} catch { $result.error=$_.Exception.ToString(); throw }
finally {
    [IO.File]::WriteAllText((Join-Path $evidence 'result.json'),($result | ConvertTo-Json -Depth 12),[Text.UTF8Encoding]::new($false))
    Write-Host ('FOLDER_PUBLISH_RESULT=' + (ConvertTo-Json -InputObject $result -Depth 12 -Compress))
}
