[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

function Get-TrackedCSharpPaths {
	$git = Get-Command 'git' -CommandType Application -ErrorAction Stop | Select-Object -First 1
	$startInfo = [System.Diagnostics.ProcessStartInfo]::new()
	$startInfo.FileName = $git.Source
	$startInfo.UseShellExecute = $false
	$startInfo.RedirectStandardOutput = $true
	$startInfo.RedirectStandardError = $true
	$startInfo.StandardOutputEncoding = [System.Text.Encoding]::UTF8
	$startInfo.StandardErrorEncoding = [System.Text.Encoding]::UTF8
	$arguments = @('-c', 'core.fsmonitor=false', 'ls-files', '-z', '--', ':(glob)**/*.cs')
	foreach ($argument in $arguments) {
		[void]$startInfo.ArgumentList.Add($argument)
	}
	$startInfo.Environment['GIT_OPTIONAL_LOCKS'] = '0'

	$process = [System.Diagnostics.Process]::new()
	$process.StartInfo = $startInfo
	if (-not $process.Start()) {
		throw 'Could not start git to enumerate tracked C# files.'
	}
	$stdoutTask = $process.StandardOutput.ReadToEndAsync()
	$stderrTask = $process.StandardError.ReadToEndAsync()
	$process.WaitForExit()
	$stdout = $stdoutTask.GetAwaiter().GetResult()
	$stderr = $stderrTask.GetAwaiter().GetResult()
	if ($process.ExitCode -ne 0) {
		throw "git ls-files failed: $($stderr.Trim())"
	}
	if ([string]::IsNullOrEmpty($stdout)) {
		return @()
	}

	$paths = $stdout.Split([char[]]@([char]0), [System.StringSplitOptions]::RemoveEmptyEntries)
	@($paths | Sort-Object -CaseSensitive)
}

function Assert-CSharpBytes {
	param(
		[Parameter(Mandatory = $true)][string]$Path,
		[Parameter(Mandatory = $true)][byte[]]$Bytes
	)

	if ($Bytes.Length -ge 3 -and $Bytes[0] -eq 0xEF -and $Bytes[1] -eq 0xBB -and $Bytes[2] -eq 0xBF) {
		throw "UTF-8 BOM found in first-party C# source: $Path"
	}
	if ($Bytes -contains [byte]0x0D) {
		throw "Non-LF line ending found in first-party C# source: $Path"
	}

	$utf8 = [System.Text.UTF8Encoding]::new($false, $true)
	try {
		$text = $utf8.GetString($Bytes)
	}
	catch {
		throw "Invalid UTF-8 in first-party C# source: $Path"
	}
	if (-not $text.EndsWith("`n", [System.StringComparison]::Ordinal) -or
		$text.EndsWith("`n`n", [System.StringComparison]::Ordinal)) {
		throw "Expected exactly one final LF in first-party C# source: $Path"
	}

	$lines = $text.Split([char[]]@([char]10), [System.StringSplitOptions]::None)
	if ($lines.Length -lt 2 -or $lines[$lines.Length - 1] -ne '') {
		throw "Could not verify the final LF in first-party C# source: $Path"
	}
	if ([string]::IsNullOrWhiteSpace($lines[0])) {
		throw "Leading blank line found in first-party C# source: $Path"
	}

	$blankRun = 0
	for ($index = 0; $index -lt ($lines.Length - 1); $index++) {
		$line = $lines[$index]
		if ($line -match '[ \t]+$') {
			throw "Trailing whitespace found in first-party C# source at line $($index + 1): $Path"
		}
		if ($line.Length -eq 0) {
			$blankRun++
			if ($blankRun -gt 2) {
				throw "More than two consecutive blank lines in first-party C# source: $Path"
			}
		}
		else {
			$blankRun = 0
		}
	}
}

$repoRoot = (Get-Location).Path
$allPaths = @(Get-TrackedCSharpPaths)
$paths = @($allPaths | Where-Object {
	$_ -cnotmatch '(^|/)(bin|obj)/' -and
	$_ -cnotmatch '(^|/)MiniJSON\.cs$' -and
	$_ -cnotmatch '\.Designer\.cs$'
})
if ($paths.Count -eq 0) {
	throw 'No tracked first-party C# sources were selected.'
}

Write-Host "C# formatting selected $($paths.Count) tracked first-party source files:"
foreach ($path in $paths) {
	Write-Host "  $path"
}

$editorConfigPath = Join-Path $repoRoot '.editorconfig'
if (-not (Test-Path -LiteralPath $editorConfigPath -PathType Leaf)) {
	throw "The effective EditorConfig file was not found: $editorConfigPath"
}

$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ('att-csharp-format-' + [Guid]::NewGuid().ToString('N'))
try {
	[void](New-Item -ItemType Directory -Path $tempRoot -Force)
	[System.IO.File]::Copy($editorConfigPath, (Join-Path $tempRoot '.editorconfig'))
	foreach ($path in $paths) {
		$sourcePath = Join-Path $repoRoot ($path.Replace('/', [System.IO.Path]::DirectorySeparatorChar))
		if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
			throw "Tracked C# source is missing from the working tree: $path"
		}
		$bytes = [System.IO.File]::ReadAllBytes($sourcePath)
		Assert-CSharpBytes -Path $path -Bytes $bytes
		$relativePath = $path.Replace('/', [System.IO.Path]::DirectorySeparatorChar)
		$targetPath = Join-Path $tempRoot $relativePath
		$targetDirectory = [System.IO.Path]::GetDirectoryName($targetPath)
		[void](New-Item -ItemType Directory -Path $targetDirectory -Force)
		[System.IO.File]::Copy($sourcePath, $targetPath)
	}

	# .NET SDK 10.0.100 is the minimum; latestMinor selects the highest stable .NET 10 SDK.
	$globalJson = '{"sdk":{"version":"10.0.100","rollForward":"latestMinor","allowPrerelease":false}}'
	[System.IO.File]::WriteAllText(
		(Join-Path $tempRoot 'global.json'),
		$globalJson + [Environment]::NewLine,
		[System.Text.UTF8Encoding]::new($false)
	)

	Push-Location -LiteralPath $tempRoot
	try {
		$dotnet = Get-Command 'dotnet' -CommandType Application -ErrorAction Stop | Select-Object -First 1
		$version = (& $dotnet.Source --version 2>&1 | Out-String).Trim()
		if ($LASTEXITCODE -ne 0 -or $version -notmatch '^10\.\d+\.\d+$') {
			throw "Expected a stable .NET SDK 10.x; found '$version'."
		}
		Write-Host "Using .NET SDK $version"
		& $dotnet.Source format whitespace --folder --verify-no-changes --verbosity quiet
		$formatExitCode = $LASTEXITCODE
	}
	finally {
		Pop-Location
	}
	if ($formatExitCode -ne 0) {
		throw "dotnet format whitespace failed with exit code $formatExitCode."
	}
	Write-Host "C# formatting verification passed for $($paths.Count) tracked first-party files."
}
finally {
	if (Test-Path -LiteralPath $tempRoot) {
		try {
			Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction Stop
		}
		catch {
			Write-Warning "Could not remove C# formatting temporary directory '$tempRoot': $($_.Exception.Message)"
		}
	}
}
