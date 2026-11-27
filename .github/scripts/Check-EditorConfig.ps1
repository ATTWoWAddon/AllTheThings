[CmdletBinding()]
param(
	[Parameter(Mandatory = $true)]
	[ValidateSet(
		'runtime-lua', 'lua-tests', 'lua-locales', 'xml', 'documentation',
		'root-metadata', 'root-policy', 'root-scripts', 'editor-and-hooks',
		'github-yaml', 'github-python', 'powershell', 'parser-test-sources',
		'csharp-sources',
		'db-sync', 'contributor-tools',
		'harvesters', 'dotnet-projects', 'database-scripts', 'codegraph',
		'standard-addon', 'raw-itemdb', 'forever-database', 'sod-database',
		'standard-database-core', 'standard-dungeons', 'standard-delves',
		'standard-zones', 'standard-expansion-features', 'standard-other',
		'shared-core', 'shared-headers', 'shared-structures',
		'shared-strings-settings', 'shared-strings-ui', 'shared-strings-other',
		'parser-config'
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
	'github-python' = @{
		Pathspecs = @(':(glob).github/scripts/*.py')
		Minimum = 1
	}
	'powershell' = @{
		Pathspecs = @(
			'.contrib/.tools/GameObjectCache-to-ObjectDB.ps1',
			'.contrib/src/Parser/tests/CostMerge.Tests.ps1',
			'.contrib/src/Parser/tests/LocalizationFallback.Tests.ps1',
			'.github/scripts/Check-EditorConfig.ps1',
			'.github/scripts/Check-CSharpFormatting.ps1'
		)
		Required = @(
			'.contrib/.tools/GameObjectCache-to-ObjectDB.ps1',
			'.contrib/src/Parser/tests/CostMerge.Tests.ps1',
			'.contrib/src/Parser/tests/LocalizationFallback.Tests.ps1',
			'.github/scripts/Check-EditorConfig.ps1',
			'.github/scripts/Check-CSharpFormatting.ps1'
		)
	}
	'parser-test-sources' = @{
		Pathspecs = @(':(glob).contrib/src/Parser/tests/*.cs')
		Required = @(
			'.contrib/src/Parser/tests/CostMerge.Tests.cs',
			'.contrib/src/Parser/tests/LocalizationFallback.Tests.cs'
		)
	}
	'csharp-sources' = @{
		Pathspecs = @(
			':(glob)**/*.cs',
			':(exclude,glob).contrib/src/Parser/tests/*.cs',
			':(exclude,glob)**/bin/**/*.cs',
			':(exclude,glob)**/obj/**/*.cs'
		)
		Required = @(
			'.contrib/src/Parser/Program.cs',
			'.contrib/src/MiniJSON/MiniJSON.cs',
			'.contrib/.source/ATT Sync Tool/MainForm.Designer.cs'
		)
		Minimum = 3
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

	'shared-core' = @{
		Pathspecs = @(
			':(glob).contrib/.db/shared/*.lua',
			':(glob).contrib/.db/shared/**/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Headers/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Headers/**/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Structures/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Structures/**/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Strings/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Strings/**/*.lua'
		)
		Required = @('.contrib/.db/shared/.main.lua')
		Minimum = 1
	}
	'shared-headers' = @{
		Pathspecs = @(
			':(glob).contrib/.db/shared/lib/Headers/*.lua',
			':(glob).contrib/.db/shared/lib/Headers/**/*.lua'
		)
		Required = @('.contrib/.db/shared/lib/Headers/Achievements/Family Battler.lua')
		Minimum = 1
	}
	'shared-structures' = @{
		Pathspecs = @(
			':(glob).contrib/.db/shared/lib/Structures/*.lua',
			':(glob).contrib/.db/shared/lib/Structures/**/*.lua'
		)
		Required = @('.contrib/.db/shared/lib/Structures/Currencies/Badge of Justice.lua')
		Minimum = 1
	}
	'shared-strings-settings' = @{
		Pathspecs = @(
			':(glob).contrib/.db/shared/lib/Strings/Settings/*.lua',
			':(glob).contrib/.db/shared/lib/Strings/Settings/**/*.lua'
		)
		Required = @('.contrib/.db/shared/lib/Strings/Settings/About/ABOUT_BOTTOM.lua')
		Minimum = 1
	}
	'shared-strings-ui' = @{
		Pathspecs = @(
			':(glob).contrib/.db/shared/lib/Strings/UI/*.lua',
			':(glob).contrib/.db/shared/lib/Strings/UI/**/*.lua'
		)
		Required = @('.contrib/.db/shared/lib/Strings/UI/Classic Window Logic/OTHER_ROW_INSTRUCTIONS.lua')
		Minimum = 1
	}
	'shared-strings-other' = @{
		Pathspecs = @(
			':(glob).contrib/.db/shared/lib/Strings/*.lua',
			':(glob).contrib/.db/shared/lib/Strings/**/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Strings/Settings/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Strings/Settings/**/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Strings/UI/*.lua',
			':(exclude,glob).contrib/.db/shared/lib/Strings/UI/**/*.lua'
		)
		Required = @('.contrib/.db/shared/lib/Strings/AllTheThings/ACCOUNT_MANAGEMENT.lua')
		Minimum = 1
	}

	'parser-config' = @{
		Pathspecs = @(
			':(glob).contrib/.db/*.config',
			':(glob).contrib/.db/**/*.config'
		)
		Required = @(
			'.contrib/.db/shared/.config/root.config',
			'.contrib/.db/shared/.config/debug.config',
			'.contrib/.db/standard/.config/retail/retail.config'
		)
		Minimum = 23
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


function Assert-SharedGroupCoverage {
	$sharedGroups = @(
		'shared-core', 'shared-headers', 'shared-structures',
		'shared-strings-settings', 'shared-strings-ui', 'shared-strings-other'
	)
	$allSharedPaths = @(Get-TrackedPaths -Pathspecs @(
		':(glob).contrib/.db/shared/*.lua',
		':(glob).contrib/.db/shared/**/*.lua'
	))
	$seen = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)
	foreach ($sharedGroup in $sharedGroups) {
		$groupPaths = @(Get-TrackedPaths -Pathspecs $groups[$sharedGroup].Pathspecs)
		foreach ($path in $groupPaths) {
			if (-not $seen.Add($path)) {
				throw "Shared Lua path is selected more than once: '$path'"
			}
		}
	}
	$missing = @($allSharedPaths | Where-Object { -not $seen.Contains($_) })
	$extra = @($seen | Where-Object { $allSharedPaths -cnotcontains $_ })
	if ($missing.Count -gt 0 -or $extra.Count -gt 0) {
		throw "Shared Lua group coverage mismatch: $($missing.Count) missing, $($extra.Count) extra."
	}
	Write-Host "Shared Lua group coverage: $($seen.Count) tracked files, exact-once."
}

function Assert-CSharpGroupCoverage {
	$allCSharpPaths = @(Get-TrackedPaths -Pathspecs @(':(glob)**/*.cs'))
	$expected = @($allCSharpPaths | Where-Object { $_ -cnotmatch '(^|/)(bin|obj)/' })
	$seen = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)
	foreach ($csharpGroup in @('csharp-sources', 'parser-test-sources')) {
		$groupPaths = @(Get-TrackedPaths -Pathspecs $groups[$csharpGroup].Pathspecs)
		foreach ($path in $groupPaths) {
			if (-not $seen.Add($path)) {
				throw "C# source path is selected more than once: '$path'"
			}
		}
	}
	$missing = @($expected | Where-Object { -not $seen.Contains($_) })
	$extra = @($seen | Where-Object { $expected -cnotcontains $_ })
	if ($missing.Count -gt 0 -or $extra.Count -gt 0) {
		throw "C# source group coverage mismatch: $($missing.Count) missing, $($extra.Count) extra."
	}
	Write-Host "C# source group coverage: $($seen.Count) tracked files, exact-once."
}

function Remove-CheckerConfigFile {
	param([string]$Path)
	if (-not [string]::IsNullOrEmpty($Path) -and (Test-Path -LiteralPath $Path)) {
		Remove-Item -LiteralPath $Path -Force -ErrorAction SilentlyContinue
	}
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
$checkerConfigPath = $null
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
	if ($Group.StartsWith('shared-', [System.StringComparison]::OrdinalIgnoreCase)) {
		Assert-SharedGroupCoverage
	}
	if ($Group -in @('csharp-sources', 'parser-test-sources')) {
		Assert-CSharpGroupCoverage
	}
	$checkerCommand = Get-Command 'editorconfig-checker' -CommandType Application -ErrorAction Stop |
		Select-Object -First 1
	$checkerPath = $checkerCommand.Source
	if ($Group -in @('csharp-sources', 'parser-test-sources')) {
		$checkerConfigPath = [System.IO.Path]::Combine(
			[System.IO.Path]::GetTempPath(),
			'editorconfig-checker-csharp-' + [Guid]::NewGuid().ToString('N') + '.json'
		)
		[System.IO.File]::WriteAllText(
			$checkerConfigPath,
			'{"SpacesAfterTabs":true}' + [Environment]::NewLine,
			[System.Text.UTF8Encoding]::new($false)
		)
	}
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
		if (-not [string]::IsNullOrEmpty($checkerConfigPath)) {
			$arguments += @('-config', $checkerConfigPath)
		}
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
	if ($failed) {
		Remove-CheckerConfigFile -Path $checkerConfigPath
		exit 1
	}
	Remove-CheckerConfigFile -Path $checkerConfigPath
	exit 0
}
catch {
	Remove-CheckerConfigFile -Path $checkerConfigPath
	Write-Host "::error::$($_.Exception.Message)"
	Write-GroupSummary -Name $Group -FileCount $fileCount -BatchCount $batchCount -Passed $false
	exit 1
}
