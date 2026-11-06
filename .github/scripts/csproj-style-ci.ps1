$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false
$ciRoot = $env:GITHUB_WORKSPACE
$productRoot = Join-Path $ciRoot 'style-product'
$baselineRoot = Join-Path $ciRoot 'style-baseline'
$runnerRoot = $env:RUNNER_TEMP
$pairRoot = Join-Path $runnerRoot 'att-csproj-pair'
$pairEvidence = Join-Path $runnerRoot 'att-csproj-evidence'
$pipeline = Join-Path $PSScriptRoot 'source-package-build-ci.ps1'
$originalWorkspace = $env:GITHUB_WORKSPACE
New-Item -ItemType Directory -Force $pairRoot, $pairEvidence | Out-Null

function Get-Tree([string] $Root, [bool] $ProjectsOnly) {
    $result = @{}
    foreach ($scope in @('.contrib/.source', '.contrib/src')) {
        $directory = Join-Path $Root $scope
        foreach ($file in Get-ChildItem -LiteralPath $directory -File -Recurse -Force) {
            $isProject = $file.Extension -ieq '.csproj'
            if ($isProject -ne $ProjectsOnly) { continue }
            $relative = [IO.Path]::GetRelativePath($Root, $file.FullName).Replace('\', '/')
            $result[$relative] = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash
        }
    }
    return $result
}
function Test-SameMap([hashtable] $Before, [hashtable] $After, [string] $Label) {
    if ($Before.Count -ne $After.Count) { throw "$Label file count differs." }
    foreach ($key in $Before.Keys) {
        if (!$After.ContainsKey($key) -or $Before[$key] -cne $After[$key]) { throw "$Label differs: $key" }
    }
}
function Set-Projects([string] $From, [string[]] $Paths) {
    foreach ($relative in $Paths) {
        $src = Join-Path $From $relative
        $dest = Join-Path $productRoot $relative
        Copy-Item -LiteralPath $src -Destination $dest -Force
    }
}
function Clear-PipelineFiles {
    foreach ($name in @('att-source-evidence','att-source-nuget','att-source-nuget-http','att-source-output','att-source-obj','att-original-lua','att-source-runtime')) {
        $path = Join-Path $runnerRoot $name
        if (Test-Path -LiteralPath $path) { Remove-Item -LiteralPath $path -Recurse -Force }
    }
    foreach ($scope in @('.contrib/.source', '.contrib/src')) {
        foreach ($name in @('Directory.Build.props','Directory.Build.targets')) {
            $path = Join-Path (Join-Path $productRoot $scope) $name
            if (Test-Path -LiteralPath $path) { Remove-Item -LiteralPath $path -Force }
        }
    }
}
function Restore-Lua {
    foreach ($name in @('NLua.dll','KeraLua.dll','lua54.dll')) {
        Copy-Item -LiteralPath (Join-Path (Join-Path $pairRoot 'original-lua') $name) -Destination (Join-Path (Join-Path $productRoot '.contrib/.tools') $name) -Force
    }
}
function Run-Pipeline([string] $Label, [string] $ProjectSource, [string[]] $ProjectPaths) {
    Clear-PipelineFiles
    Restore-Lua
    Set-Projects $ProjectSource $ProjectPaths
    $env:GITHUB_WORKSPACE = $productRoot
    Push-Location $productRoot
    $code = -1
    try {
        $pwsh = (Get-Process -Id $PID).Path
        & $pwsh -NoLogo -NoProfile -File $pipeline
        $code = $LASTEXITCODE
    } finally {
        Pop-Location
        $runEvidence = Join-Path $runnerRoot 'att-source-evidence'
        if (Test-Path -LiteralPath $runEvidence -PathType Container) {
            Copy-Item -LiteralPath $runEvidence -Destination (Join-Path $pairEvidence $Label) -Recurse -Force
        }
    }
    if ($code -ne 0) { throw "$Label pipeline failed with exit code $code." }
    $outputs = Join-Path $runnerRoot 'att-source-output'
    if (!(Test-Path -LiteralPath (Join-Path $outputs 'Release') -PathType Container)) { throw "$Label Release outputs missing." }
    Copy-Item -LiteralPath $outputs -Destination (Join-Path $pairRoot $Label) -Recurse -Force
}
function Get-FileMap([string] $Root) {
    $map = @{}
    foreach ($file in Get-ChildItem -LiteralPath $Root -File -Recurse -Force) {
        $relative = [IO.Path]::GetRelativePath($Root, $file.FullName).Replace('\', '/')
        $map[$relative] = [pscustomobject]@{ sha256 = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash; size = $file.Length }
    }
    return $map
}
function Compare-Outputs([string] $Before, [string] $After) {
    $old = Get-FileMap $Before
    $new = Get-FileMap $After
    $paths = @(@($old.Keys) + @($new.Keys) | Sort-Object -Unique)
    $rows = foreach ($relative in $paths) {
        $a = $old[$relative]; $b = $new[$relative]
        $match = $null -ne $a -and $null -ne $b -and $a.size -eq $b.size -and $a.sha256 -ceq $b.sha256
        [pscustomobject]@{ path=$relative; category=if ($relative -in @('Release/README.txt','Release/SHA256SUMS.txt')) {'evidence'} else {'build-output'}; before=$a; after=$b; match=$match }
    }
    $rows | ConvertTo-Json -Depth 6 | Set-Content -Encoding utf8 (Join-Path $pairEvidence 'output-byte-comparison.json')
    if (@($rows | Where-Object { !$_.match }).Count -ne 0) { throw 'Build output inventory or file bytes differ; see output-byte-comparison.json.' }
    return @($rows).Count
}
function Compare-FixtureOutputs {
    $paths = @()
    foreach ($prefix in @('runtime', 'runtime/shared')) {
        foreach ($name in @('asset-output.actual.txt','icon-output.actual.txt','item-exe-output.actual.txt','item-module-output.actual.txt','database-rewritten.lua.txt')) {
            $paths += "$prefix/$name"
        }
    }
    foreach ($name in @('csv-actual.txt','item-db-compare-actual.json','parser-cost-merge.stdout.txt','offline-classic.stdout.txt','offline-harvester.stdout.txt')) {
        $paths += "runtime/src/$name"
    }
    $rows = foreach ($relative in $paths) {
        $a = Join-Path (Join-Path $pairEvidence 'baseline') $relative
        $b = Join-Path (Join-Path $pairEvidence 'candidate') $relative
        if (!(Test-Path -LiteralPath $a -PathType Leaf) -or !(Test-Path -LiteralPath $b -PathType Leaf)) { throw "Fixture output missing: $relative" }
        $ha = (Get-FileHash -LiteralPath $a -Algorithm SHA256).Hash
        $hb = (Get-FileHash -LiteralPath $b -Algorithm SHA256).Hash
        [pscustomobject]@{ path=$relative; beforeSha256=$ha; afterSha256=$hb; match=($ha -ceq $hb) }
    }
    foreach ($prefix in @('runtime','runtime/shared')) {
        $values = foreach ($label in @('baseline','candidate')) {
            $file = Join-Path (Join-Path $pairEvidence $label) "$prefix/skill-parser.stdout.txt"
            $text = [IO.File]::ReadAllText($file)
            $index = $text.IndexOf('{')
            if ($index -lt 0) { throw "Skill fixture JSON missing: $label / $prefix" }
            $json = $text.Substring($index) | ConvertFrom-Json
            [pscustomobject]@{ actual=$json.actual; actualRepeated=$json.actualRepeated; actualChanged=$json.actualChanged }
        }
        $left = $values[0] | ConvertTo-Json -Compress
        $right = $values[1] | ConvertTo-Json -Compress
        $rows += [pscustomobject]@{ path="$prefix/skill-parser actual fields"; beforeSha256=[Convert]::ToHexString([Security.Cryptography.SHA256]::HashData([Text.Encoding]::UTF8.GetBytes($left))); afterSha256=[Convert]::ToHexString([Security.Cryptography.SHA256]::HashData([Text.Encoding]::UTF8.GetBytes($right))); match=($left -ceq $right) }
    }
    $rows | ConvertTo-Json -Depth 5 | Set-Content -Encoding utf8 (Join-Path $pairEvidence 'fixture-output-comparison.json')
    if (@($rows | Where-Object { !$_.match }).Count -ne 0) { throw 'Fixture outputs differ; see fixture-output-comparison.json.' }
    return @($rows).Count
}

function Write-RepoComparison([string] $candidateRelease) {
# CI-only comparison block. Caller supplies $productRoot, $candidateRelease and
# $pairEvidence. A differing/missing file is evidence, not a build failure.
# Git-tracked status comes from the pinned product checkout, not filesystem presence.
if (!(Test-Path -LiteralPath $productRoot -PathType Container)) { throw 'Product root missing.' }
if (!(Test-Path -LiteralPath $candidateRelease -PathType Container)) { throw 'Candidate Release root missing.' }
New-Item -ItemType Directory -Force -Path $pairEvidence | Out-Null
$pairs = [Collections.Generic.List[object]]::new()
function Add-ArtifactPair([string] $Project, [string] $Baseline, [string] $Candidate) {
    $pairs.Add([pscustomobject]@{ project=$Project; baselineRelative=$Baseline; candidateRelative=$Candidate })
}

# Framework assemblies and their startup/library configuration.
Add-ArtifactPair 'Database' '.contrib/.tools/Database.dll' 'Database/Database.dll'
Add-ArtifactPair 'Database' '.contrib/.tools/Database.dll.config' 'Database/Database.dll.config'
Add-ArtifactPair 'ATT Sync Tool' '.contrib/.tools/ATT Sync Tool.exe' 'ATT Sync Tool/ATT Sync Tool.exe'
Add-ArtifactPair 'ATT Sync Tool' '.contrib/.tools/ATT Sync Tool.exe.config' 'ATT Sync Tool/ATT Sync Tool.exe.config'
Add-ArtifactPair 'Item Database Consolidator' '.contrib/.tools/Item Database Consolidator.exe' 'Item Database Consolidator/Item Database Consolidator.exe'
Add-ArtifactPair 'Item Database Consolidator' '.contrib/.tools/Item Database Consolidator.exe.config' 'Item Database Consolidator/Item Database Consolidator.exe.config'
Add-ArtifactPair 'Parser' '.contrib/.tools/Parser.exe' 'Parser/Parser.exe'
Add-ArtifactPair 'Parser' '.contrib/.tools/Parser.exe.config' 'Parser/Parser.exe.config'
foreach ($name in @('Blizzard API Harvester', 'Classic Item Detector')) {
    foreach ($suffix in @('.exe', '.exe.config')) {
        Add-ArtifactPair $name ".contrib/Harvesters/$name$suffix" "$name/$name$suffix"
    }
}
foreach ($suffix in @('.exe', '.exe.config')) {
    Add-ArtifactPair 'Item DB Compare Tool' ".contrib/Harvesters/DBs/Item DB Compare Tool$suffix" "Item DB Compare Tool/Item DB Compare Tool$suffix"
}

# .NET 10 managed DLL, native apphost, dependency and runtime manifests.
foreach ($name in @('Skill Level Requirements', 'AssetDB Builder', 'IconID Converter', 'CSVCleaner')) {
    foreach ($suffix in @('.dll', '.exe', '.deps.json', '.runtimeconfig.json')) {
        Add-ArtifactPair $name ".contrib/.tools/$name$suffix" "$name/$name$suffix"
    }
}

# Compare each actual package copy to the original shared file independently.
foreach ($name in @('Database', 'ATT Sync Tool', 'Item Database Consolidator', 'Parser')) {
    foreach ($dependency in @('NLua.dll', 'KeraLua.dll', 'lua54.dll')) {
        Add-ArtifactPair $name ".contrib/.tools/$dependency" "$name/$dependency"
    }
}
Add-ArtifactPair 'Parser' '.contrib/.tools/Csv.dll' 'Parser/Csv.dll'
Add-ArtifactPair 'Skill Level Requirements' '.contrib/.tools/Newtonsoft.Json.dll' 'Skill Level Requirements/Newtonsoft.Json.dll'

$comparison = foreach ($pair in $pairs) {
    $baselinePath = Join-Path $productRoot $pair.baselineRelative
    $candidatePath = Join-Path $candidateRelease $pair.candidateRelative
    & git -C $productRoot ls-files --error-unmatch -- $pair.baselineRelative *> $null
    $gitCode = $LASTEXITCODE
    if ($gitCode -notin @(0, 1)) { throw "Could not determine tracked status: $($pair.baselineRelative)" }
    $tracked = $gitCode -eq 0
    $baselinePresent = Test-Path -LiteralPath $baselinePath -PathType Leaf
    $candidatePresent = Test-Path -LiteralPath $candidatePath -PathType Leaf
    $baselineSize = if ($baselinePresent) { (Get-Item -LiteralPath $baselinePath).Length } else { $null }
    $candidateSize = if ($candidatePresent) { (Get-Item -LiteralPath $candidatePath).Length } else { $null }
    $baselineSha = if ($baselinePresent) { (Get-FileHash -LiteralPath $baselinePath -Algorithm SHA256).Hash } else { $null }
    $candidateSha = if ($candidatePresent) { (Get-FileHash -LiteralPath $candidatePath -Algorithm SHA256).Hash } else { $null }
    $equals = if ($baselinePresent -and $candidatePresent) { $baselineSize -eq $candidateSize -and $baselineSha -ceq $candidateSha } else { $null }
    $status = if (!$baselinePresent -and !$candidatePresent) { 'missing-both' } elseif (!$baselinePresent) { 'missing-baseline' } elseif (!$candidatePresent) { 'missing-candidate' } elseif ($equals) { 'equal' } else { 'different' }
    [pscustomobject]@{
        project=$pair.project
        baselineRelative=$pair.baselineRelative
        baselineTracked=$tracked
        baselinePresent=$baselinePresent
        baselineSize=$baselineSize
        baselineSha256=$baselineSha
        candidateRelative=$pair.candidateRelative
        candidatePresent=$candidatePresent
        candidateSize=$candidateSize
        candidateSha256=$candidateSha
        equals=$equals
        status=$status
    }
}
$report = [pscustomobject]@{ method='SHA-256 and length; no semantic or fingerprint classification'; trackedStatus='git-ls-files-at-product-HEAD'; pairs=@($comparison) }
$report | ConvertTo-Json -Depth 6 | Set-Content -Encoding utf8 (Join-Path $pairEvidence 'repo-binary-comparison.json')
$comparison | Export-Csv -NoTypeInformation -Encoding utf8 (Join-Path $pairEvidence 'repo-binary-comparison.csv')

}

$failure = $null
$releaseCount = $null
$fixtureCount = $null
$productProjects = $null
try {
    foreach ($entry in @(
        @{ Root=$productRoot; Expected='f1ce7e6208f5364847613ed6b0b6623bdd82e710'; Name='candidate' },
        @{ Root=$baselineRoot; Expected='e515aa9dc34f22d370e141847d66e25db2aa0a4b'; Name='baseline' }
    )) {
        $head = (& git -C $entry.Root rev-parse HEAD | Out-String).Trim()
        if ($LASTEXITCODE -ne 0 -or $head -cne $entry.Expected) { throw "$($entry.Name) checkout HEAD differs: $head" }
        [pscustomobject]@{ name=$entry.Name; expected=$entry.Expected; actual=$head; path=$entry.Root } |
            ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $pairEvidence "$($entry.Name)-checkout.json")
    }
    foreach ($scope in @('.contrib/.source', '.contrib/src')) {
        foreach ($name in @('Directory.Build.props','Directory.Build.targets')) {
            if (Test-Path -LiteralPath (Join-Path (Join-Path $productRoot $scope) $name)) { throw "Unexpected existing product import: $scope/$name" }
        }
    }
    $candidateProjects = Get-Tree $productRoot $true
    $baselineProjects = Get-Tree $baselineRoot $true
    if ($candidateProjects.Count -ne 11 -or $baselineProjects.Count -ne 11 -or
        (Compare-Object @($candidateProjects.Keys | Sort-Object) @($baselineProjects.Keys | Sort-Object))) { throw 'Expected the same eleven project paths in both checkouts.' }
    $candidateSource = Get-Tree $productRoot $false
    $baselineSource = Get-Tree $baselineRoot $false
    Test-SameMap $baselineSource $candidateSource 'Non-project source'
    $projectPaths = @($candidateProjects.Keys | Sort-Object)
    [pscustomobject]@{ candidate=$candidateProjects; baseline=$baselineProjects; nonProjectFiles=$candidateSource.Count; nonProjectBytesEqual=$true } |
        ConvertTo-Json -Depth 6 | Set-Content -Encoding utf8 (Join-Path $pairEvidence 'source-snapshots.json')
    $savedProjects = Join-Path $pairRoot 'candidate-projects'
    foreach ($relative in $projectPaths) {
        $destination = Join-Path $savedProjects $relative
        New-Item -ItemType Directory -Force (Split-Path $destination) | Out-Null
        Copy-Item -LiteralPath (Join-Path $productRoot $relative) -Destination $destination
    }
    $luaBackup = Join-Path $pairRoot 'original-lua'
    New-Item -ItemType Directory -Force $luaBackup | Out-Null
    foreach ($name in @('NLua.dll','KeraLua.dll','lua54.dll')) {
        Copy-Item -LiteralPath (Join-Path (Join-Path $productRoot '.contrib/.tools') $name) -Destination $luaBackup
    }
    $productProjects = $projectPaths
    Run-Pipeline 'baseline' $baselineRoot $projectPaths
    Test-SameMap $baselineProjects (Get-Tree $productRoot $true) 'Evaluated baseline projects'
    Run-Pipeline 'candidate' $savedProjects $projectPaths
    Test-SameMap $candidateProjects (Get-Tree $productRoot $true) 'Evaluated candidate projects'
    $releaseCount = Compare-Outputs (Join-Path $pairRoot 'baseline') (Join-Path $pairRoot 'candidate')
    $fixtureCount = Compare-FixtureOutputs
    Restore-Lua
    Write-RepoComparison (Join-Path $pairRoot 'candidate/Release')
    "Before and after build outputs are byte-identical ($releaseCount files); fixture outputs match ($fixtureCount checks)." >> $env:GITHUB_STEP_SUMMARY
} catch {
    $failure = $_.ToString()
    throw
} finally {
    if ($null -ne $productProjects) {
        $savedProjects = Join-Path $pairRoot 'candidate-projects'
        Set-Projects $savedProjects $productProjects
        if (Test-Path -LiteralPath (Join-Path $pairRoot 'original-lua') -PathType Container) { Restore-Lua }
        foreach ($scope in @('.contrib/.source', '.contrib/src')) {
            foreach ($name in @('Directory.Build.props','Directory.Build.targets')) {
                $path = Join-Path (Join-Path $productRoot $scope) $name
                if (Test-Path -LiteralPath $path) { Remove-Item -LiteralPath $path -Force }
            }
        }
    }
    $env:GITHUB_WORKSPACE = $originalWorkspace
    [pscustomobject]@{ status=if ($failure) {'failed'} else {'passed'}; error=$failure; outputFiles=$releaseCount; fixtureChecks=$fixtureCount; baseline='e515aa9dc34f22d370e141847d66e25db2aa0a4b'; candidate='f1ce7e6208f5364847613ed6b0b6623bdd82e710' } |
        ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $pairEvidence 'comparison-result.json')
}
