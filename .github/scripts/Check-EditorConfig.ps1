[CmdletBinding()]
param(
	[Parameter(Mandatory = $true)]
	[ValidateSet(
		'runtime-lua', 'lua-tests', 'lua-locales', 'xml', 'documentation',
		'root-metadata', 'root-policy', 'root-scripts', 'editor-and-hooks',
		'github-yaml', 'powershell', 'db-sync', 'contributor-tools',
		'harvesters', 'dotnet-projects', 'database-scripts', 'codegraph',
		'standard-addon', 'raw-itemdb', 'forever-database', 'sod-database',
		'standard-database-core', 'standard-dungeons', 'standard-delves',
		'standard-zones', 'standard-expansion-features', 'standard-other'
	)]
	[string]$Group,
	[switch]$VerboseChecker
)

$ErrorActionPreference = 'Stop'

# Check only explicitly scoped text files; legacy sections and binary assets are
# outside this workflow, and this does not claim to validate every repository file.
$groups = @{
	'runtime-lua' = @{
		Pathspecs = @('AllTheThings.lua', ':(glob)lib/**/*.lua', ':(glob)src/**/*.lua')
		Required = @('AllTheThings.lua')
	}
	'lua-tests' = @{
		Pathspecs = @(':(glob)tests/*.lua')
		Minimum = 1
	}
	'lua-locales' = @{
		Pathspecs = @(':(glob)locales/*.lua')
		Minimum = 1
	}
	'xml' = @{
		Pathspecs = @('Bindings.xml', 'src/Settings/Settings.xml', 'src/UI/Windows/Windows.xml')
		Required = @('Bindings.xml', 'src/Settings/Settings.xml', 'src/UI/Windows/Windows.xml')
	}
	'documentation' = @{
		Pathspecs = @('AGENTS.md', 'CLAUDE.md', 'README.md', 'docs/deprecated-wow-api-audit.md')
		Required = @('AGENTS.md', 'CLAUDE.md', 'README.md', 'docs/deprecated-wow-api-audit.md')
	}
	'root-metadata' = @{
		Pathspecs = @('.coderabbit.yaml', '.pre-commit-config.yaml', '_config.yml', '.pkgmeta')
		Required = @('.coderabbit.yaml', '.pre-commit-config.yaml', '_config.yml', '.pkgmeta')
	}
	'root-policy' = @{
		Pathspecs = @('.editorconfig', '.gitattributes', '.gitignore', '.luarc.json', 'setup.cfg', 'LICENSE')
		Required = @('.editorconfig', '.gitattributes', '.gitignore', '.luarc.json', 'setup.cfg', 'LICENSE')
	}
	'root-scripts' = @{
		Pathspecs = @('AllTheThings.toc', 'Link ATT to WoW.bat', 'Link ATT to WoW.sh')
		Required = @('AllTheThings.toc', 'Link ATT to WoW.bat', 'Link ATT to WoW.sh')
	}
	'editor-and-hooks' = @{
		Pathspecs = @(':(glob).vscode/*.json', ':(glob).githooks/*')
		Minimum = 1
	}
	'github-yaml' = @{
		Pathspecs = @(
			':(glob).github/*.yml',
			':(glob).github/ISSUE_TEMPLATE/*.yml',
			':(glob).github/workflows/*.yml'
		)
		Minimum = 1
	}
	'powershell' = @{
		Pathspecs = @(
			'.contrib/.tools/GameObjectCache-to-ObjectDB.ps1',
			'.contrib/src/Parser/tests/CostMerge.Tests.ps1',
			'.contrib/src/Parser/tests/LocalizationFallback.Tests.ps1',
			'.github/scripts/Check-EditorConfig.ps1'
		)
		Required = @(
			'.contrib/.tools/GameObjectCache-to-ObjectDB.ps1',
			'.contrib/src/Parser/tests/CostMerge.Tests.ps1',
			'.contrib/src/Parser/tests/LocalizationFallback.Tests.ps1',
			'.github/scripts/Check-EditorConfig.ps1'
		)
	}
	'db-sync' = @{
		Pathspecs = @(
			':(glob).contrib/db-sync/*.md',
			':(glob).contrib/db-sync/*.py',
			':(glob).contrib/db-sync/*.sh',
			'.contrib/db-sync/sync-db.cmd'
		)
		Required = @(
			'.contrib/db-sync/README.md',
			'.contrib/db-sync/sync-db.cmd',
			'.contrib/db-sync/sync-db.sh',
			'.contrib/db-sync/sync_db.py'
		)
	}
	'contributor-tools' = @{
		Pathspecs = @(
			'.contrib/.tools/.wago.update.bat',
			'.contrib/.tools/README.md',
			'.contrib/.tools/TOOLS_ROADMAP.md',
			':(glob).contrib/.tools/Lua/*.js',
			':(glob).contrib/.tools/Localization/*.py',
			'.contrib/.tools/Localization/requirements.txt'
		)
		Minimum = 1
	}
	'harvesters' = @{
		Pathspecs = @(
			':(glob).contrib/Harvesters/*.bat',
			':(glob).contrib/Harvesters/DBs/*.bat',
			':(glob).contrib/Harvesters/Database Harvester/*.py',
			':(glob).contrib/Harvesters/Exploration Mapping/*.py',
			':(glob).contrib/Harvesters/WoWHead Harvester/*.js',
			'.contrib/Harvesters/OpenItems.html'
		)
		Minimum = 1
	}
	'dotnet-projects' = @{
		Pathspecs = @(':(glob)**/*.csproj', ':(glob)**/*.sln', ':(glob)**/*.slnx')
		Minimum = 1
	}
	'database-scripts' = @{
		Pathspecs = @(
			':(glob).contrib/.db/*.bat',
			':(glob).contrib/.db/**/*.bat',
			':(glob).contrib/.db/*.py',
			':(glob).contrib/.db/**/*.py'
		)
		Minimum = 1
	}
	'codegraph' = @{
		Pathspecs = @('.codegraph/.gitignore')
		Required = @('.codegraph/.gitignore')
	}
	'standard-addon' = @{
		Pathspecs = @('.contrib/Standard.lua')
		Required = @('.contrib/Standard.lua')
	}
	'raw-itemdb' = @{
		Pathspecs = @(':(glob).contrib/.raw/ItemDB/*.lua', '.contrib/.raw/ItemDB/README.txt')
		Minimum = 1
	}
	'forever-database' = @{
		Pathspecs = @(':(glob).contrib/.db/forever/*.lua', ':(glob).contrib/.db/forever/**/*.lua')
		Minimum = 1
	}
	'sod-database' = @{
		Pathspecs = @(
			':(glob).contrib/.db/season of discovery/*.lua',
			':(glob).contrib/.db/season of discovery/**/*.lua'
		)
		Minimum = 1
	}
	'standard-database-core' = @{
		Pathspecs = @(
			':(glob).contrib/.db/standard/.config/**/*.lua',
			':(glob).contrib/.db/standard/00 - DB/**/*.lua',
			':(glob).contrib/.db/standard/00 - Item DB/**/*.lua',
			':(glob).contrib/.db/standard/00 - Profession DB/**/*.lua'
		)
		Minimum = 1
	}
	'standard-dungeons' = @{
		Pathspecs = @(':(glob).contrib/.db/standard/01 - Dungeons Raids/**/*.lua')
		Minimum = 1
	}
	'standard-delves' = @{
		Pathspecs = @(':(glob).contrib/.db/standard/02 - Delves/**/*.lua')
		Minimum = 1
	}
	'standard-zones' = @{
		Pathspecs = @(':(glob).contrib/.db/standard/02 - Outdoor Zones/**/*.lua')
		Minimum = 1
	}
	'standard-expansion-features' = @{
		Pathspecs = @(':(glob).contrib/.db/standard/06 - Expansion Features/**/*.lua')
		Minimum = 1
	}
	'standard-other' = @{
		Pathspecs = @(
			':(glob).contrib/.db/standard/*.lua',
			':(glob).contrib/.db/standard/**/*.lua',
			':(exclude,glob).contrib/.db/standard/.config/**/*.lua',
			':(exclude,glob).contrib/.db/standard/00 - DB/**/*.lua',
			':(exclude,glob).contrib/.db/standard/00 - Item DB/**/*.lua',
			':(exclude,glob).contrib/.db/standard/00 - Profession DB/**/*.lua',
			':(exclude,glob).contrib/.db/standard/01 - Dungeons Raids/**/*.lua',
			':(exclude,glob).contrib/.db/standard/02 - Delves/**/*.lua',
			':(exclude,glob).contrib/.db/standard/02 - Outdoor Zones/**/*.lua',
			':(exclude,glob).contrib/.db/standard/06 - Expansion Features/**/*.lua'
		)
		Minimum = 1
	}
}

function Invoke-NativeProcess {
	param(
		[Parameter(Mandatory = $true)][string]$FileName,
		[Parameter(Mandatory = $true)][string[]]$Arguments
	)

	$startInfo = [System.Diagnostics.ProcessStartInfo]::new()
	$startInfo.FileName = $FileName
	$startInfo.UseShellExecute = $false
	$startInfo.RedirectStandardOutput = $true
	$startInfo.RedirectStandardError = $true
	$startInfo.StandardOutputEncoding = [System.Text.Encoding]::UTF8
	$startInfo.StandardErrorEncoding = [System.Text.Encoding]::UTF8
	foreach ($argument in $Arguments) {
		[void]$startInfo.ArgumentList.Add($argument)
	}

	$process = [System.Diagnostics.Process]::new()
	$process.StartInfo = $startInfo
	if (-not $process.Start()) {
		throw "Could not start '$FileName'."
	}

	$stdoutTask = $process.StandardOutput.ReadToEndAsync()
	$stderrTask = $process.StandardError.ReadToEndAsync()
	$process.WaitForExit()
	[pscustomobject]@{
		ExitCode = $process.ExitCode
		Stdout = $stdoutTask.GetAwaiter().GetResult()
		Stderr = $stderrTask.GetAwaiter().GetResult()
	}
}

function Get-TrackedPaths {
	param([Parameter(Mandatory = $true)][string[]]$Pathspecs)

	$result = Invoke-NativeProcess -FileName 'git' -Arguments (@('ls-files', '-z', '--') + $Pathspecs)
	if ($result.ExitCode -ne 0) {
		throw "git ls-files failed: $($result.Stderr.Trim())"
	}
	if ([string]::IsNullOrEmpty($result.Stdout)) {
		return @()
	}

	$paths = $result.Stdout.Split([char[]]@([char]0), [System.StringSplitOptions]::RemoveEmptyEntries)
	$sortedPaths = [System.Collections.Generic.SortedSet[string]]::new([System.StringComparer]::Ordinal)
	foreach ($path in $paths) {
		[void]$sortedPaths.Add($path)
	}
	@($sortedPaths)
}

function Write-GroupSummary {
	param(
		[string]$Name,
		[int]$FileCount,
		[int]$BatchCount,
		[bool]$Passed
	)

	$result = if ($Passed) { 'PASS' } else { 'FAIL' }
	Write-Host "EditorConfig group '$Name': $result ($FileCount tracked files, $BatchCount batch(es))."
	if (-not [string]::IsNullOrEmpty($env:GITHUB_STEP_SUMMARY)) {
		$summary = "## $Name`n`n- Tracked files: $FileCount`n- Batches: $BatchCount`n- Result: $result`n`n"
		[System.IO.File]::AppendAllText($env:GITHUB_STEP_SUMMARY, $summary, [System.Text.UTF8Encoding]::new($false))
	}
}

$fileCount = 0
$batchCount = 0
try {
	$definition = $groups[$Group]
	if ($null -eq $definition) {
		throw "Unknown EditorConfig group '$Group'."
	}

	$allPaths = @(Get-TrackedPaths -Pathspecs $definition.Pathspecs)
	$fileCount = $allPaths.Count

	$required = @()
	if ($definition.ContainsKey('Required')) {
		$required = @($definition.Required)
		$missing = @($required | Where-Object { $allPaths -cnotcontains $_ })
		if ($missing.Count -gt 0) {
			throw "Required tracked paths are missing from '$Group': $($missing -join ', ')"
		}
	}

	$minimum = if ($definition.ContainsKey('Minimum')) { [int]$definition.Minimum } else { 1 }
	if ($allPaths.Count -lt $minimum) {
		throw "Group '$Group' selected $($allPaths.Count) tracked files; at least $minimum are required."
	}
	$checkerCommand = Get-Command 'editorconfig-checker' -CommandType Application -ErrorAction Stop |
		Select-Object -First 1
	$checkerPath = $checkerCommand.Source
	$maxArgumentChars = 7000
	$batches = [System.Collections.Generic.List[object]]::new()
	$currentBatch = [System.Collections.Generic.List[string]]::new()
	$currentLength = 64
	foreach ($path in $allPaths) {
		$argumentLength = $path.Length + 4
		if ($argumentLength -gt $maxArgumentChars) {
			throw "Tracked path exceeds the safe process argument limit: '$path'"
		}
		if ($currentBatch.Count -gt 0 -and $currentLength + $argumentLength -gt $maxArgumentChars) {
			$batches.Add($currentBatch.ToArray())
			$currentBatch = [System.Collections.Generic.List[string]]::new()
			$currentLength = 64
		}
		$currentBatch.Add($path)
		$currentLength += $argumentLength
	}
	if ($currentBatch.Count -gt 0) { $batches.Add($currentBatch.ToArray()) }
	if ($batches.Count -eq 0) {
		throw "Group '$Group' produced no checker batches."
	}
	$batchCount = $batches.Count

	$failed = $false
	for ($index = 0; $index -lt $batches.Count; $index++) {
		$arguments = @('-ignore-defaults', '-no-color')
		if ($VerboseChecker) { $arguments += '-verbose' }
		$arguments += [string[]]$batches[$index]
		$result = Invoke-NativeProcess -FileName $checkerPath -Arguments $arguments
		if (-not [string]::IsNullOrEmpty($result.Stdout)) { [Console]::Out.Write($result.Stdout) }
		if (-not [string]::IsNullOrEmpty($result.Stderr)) { [Console]::Error.Write($result.Stderr) }
		if ($result.ExitCode -ne 0) {
			$failed = $true
			Write-Host "::error::editorconfig-checker failed for '$Group' batch $($index + 1) with exit code $($result.ExitCode)."
		}
	}

	Write-GroupSummary -Name $Group -FileCount $allPaths.Count -BatchCount $batches.Count -Passed (-not $failed)
	if ($failed) { exit 1 }
	exit 0
}
catch {
	Write-Host "::error::$($_.Exception.Message)"
	Write-GroupSummary -Name $Group -FileCount $fileCount -BatchCount $batchCount -Passed $false
	exit 1
}
