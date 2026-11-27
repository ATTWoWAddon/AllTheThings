[CmdletBinding()]
param(
	[Parameter(Mandatory)]
	[ValidateSet('Parser', 'Blizzard API Harvester', 'Classic Item Detector', 'Item DB Compare Tool', 'AssetDB Builder', 'Database')]
	[string] $Tool,
	[Parameter(Mandatory)]
	[string] $ToolPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$path = (Resolve-Path -LiteralPath $ToolPath).ProviderPath
$copyright = 'Copyright (c) 2013 Calvin Rien'
$notice = 'MiniJSON (c) 2013 Calvin Rien'
$licenseTitle = 'MiniJSON (MIT License)'
$licenseText = 'Permission is hereby granted, free of charge, to any person obtaining'

function Show-NoticeOutput([string] $Heading, [string] $Output = '') {
	Write-Host $Heading
	$summary = @("### $Heading", '')
	if ($Output) {
		Write-Host $Output.TrimEnd()
		$summary += @('```text', $Output.TrimEnd(), '```', '')
	}
	if ($env:GITHUB_STEP_SUMMARY) {
		Add-Content -LiteralPath $env:GITHUB_STEP_SUMMARY -Value $summary
	}
}

function Stop-NoticeProcess([Diagnostics.Process] $Process) {
	if ($Process.HasExited) { return }
	try { $Process.Kill($true) }
	catch [InvalidOperationException], [ComponentModel.Win32Exception] {
		if (!$Process.HasExited) { throw }
	}
}

if ($Tool -eq 'Database') {
	$assembly = [Reflection.Assembly]::LoadFile($path)
	$stream = $assembly.GetManifestResourceStream('MiniJSON-LICENSE.txt')
	if ($null -eq $stream) { throw 'Database.dll is missing its embedded MiniJSON license.' }
	$buffer = [IO.MemoryStream]::new()
	try {
		$stream.CopyTo($buffer)
		$bytes = $buffer.ToArray()
		$noticePath = Join-Path $PSScriptRoot '../../.contrib/src/MiniJSON/MiniJSON-LICENSE.txt'
		$expected = [IO.File]::ReadAllBytes($noticePath)
		if ([Convert]::ToBase64String($bytes) -cne [Convert]::ToBase64String($expected)) {
			throw 'Database.dll does not embed the exact MiniJSON license.'
		}
		Show-NoticeOutput 'Database.dll embeds the complete MiniJSON MIT license'
	}
	finally {
		$buffer.Dispose()
		$stream.Dispose()
	}
	return
}

$fixture = [IO.Directory]::CreateTempSubdirectory('att-minijson-notice-').FullName
$process = $null
$firstLine = $null
try {
	$directory = $fixture
	$arguments = @()
	$startupOnly = $Tool -in @('Parser', 'Blizzard API Harvester')
	switch ($Tool) {
		'Parser' {
			$directory = [IO.Directory]::CreateDirectory((Join-Path $fixture '.contrib/.tools')).FullName
			[IO.File]::WriteAllText((Join-Path $directory 'invalid-fixture.config'), '{"value":')
			$arguments = @('auto', 'config=invalid-fixture.config')
		}
		'Item DB Compare Tool' {
			[IO.File]::WriteAllText((Join-Path $directory 'itemDB-fixture.json'), '{"items":[{"itemID":42,"name":"fixture"}]}')
		}
		'AssetDB Builder' {
			$directory = [IO.Directory]::CreateDirectory((Join-Path $fixture '.tools')).FullName
			$assetInput = [IO.Directory]::CreateDirectory((Join-Path $fixture '.raw/AssetDB')).FullName
			[IO.File]::WriteAllText((Join-Path $assetInput 'ids.json'), '{"20":1,"3":2,"20":3,}')
		}
	}

	$start = [Diagnostics.ProcessStartInfo]::new($path)
	$start.WorkingDirectory = $directory
	$start.UseShellExecute = $false
	$start.RedirectStandardInput = $true
	$start.RedirectStandardOutput = $true
	$start.RedirectStandardError = $true
	foreach ($argument in $arguments) { $start.ArgumentList.Add($argument) }

	# No API.key or Client.key is supplied. Keep stdin open for the startup-only tools.
	$process = [Diagnostics.Process]::Start($start)
	if (!$startupOnly) { $process.StandardInput.Close() }
	$stderrTask = $process.StandardError.ReadToEndAsync()

	$nextLine = $process.StandardOutput.ReadLineAsync()
	if (!$nextLine.Wait(30000)) {
		throw "$Tool did not print the MiniJSON notice within 30 seconds."
	}
	$firstLine = $nextLine.GetAwaiter().GetResult()
	if ($null -eq $firstLine) {
		$startupError = if ($stderrTask.Wait(1000)) { $stderrTask.GetAwaiter().GetResult().Trim() }
		throw "$Tool exited before printing the MiniJSON notice. $startupError"
	}
	if ($firstLine -cne $notice) { throw "$Tool stdout did not start with the exact MiniJSON notice." }

	$stdoutTail = $process.StandardOutput.ReadToEndAsync()
	if ($startupOnly) { Stop-NoticeProcess $process }
	if (!$process.WaitForExit(15000) -or !$stdoutTail.Wait(5000) -or !$stderrTask.Wait(5000)) {
		throw "$Tool did not finish within the smoke test timeout."
	}

	$remainingOutput = $stdoutTail.GetAwaiter().GetResult().Replace("`r`n", "`n")
	$stderr = $stderrTask.GetAwaiter().GetResult()
	$scope = if ($startupOnly) { 'startup only' } else { 'fixture run' }
	Show-NoticeOutput "$Tool stdout ($scope)" ($firstLine + "`n" + $remainingOutput)
	if ($remainingOutput.Contains($notice)) {
		throw "$Tool printed the MiniJSON notice more than once."
	}
	if ($remainingOutput.Contains($copyright) -or $remainingOutput.Contains($licenseTitle) -or $remainingOutput.Contains($licenseText)) {
		throw "$Tool printed extra MiniJSON copyright or license text on stdout."
	}
	if ($stderr.Contains($notice) -or $stderr.Contains($copyright) -or $stderr.Contains($licenseTitle) -or $stderr.Contains($licenseText)) {
		throw "$Tool printed the MiniJSON notice on stderr."
	}
	if (!$startupOnly -and $process.ExitCode -ne 0) {
		throw "$Tool exited with code $($process.ExitCode). stderr: $stderr"
	}

	if ($Tool -eq 'AssetDB Builder') {
		$pathToLua = Join-Path $fixture '.db/standard/00 - DB/AssetDB/ids.lua'
		$expectedLua = @('-- #if ids', '_.AssetDB = {', '[3]=1,', '[20]=1,', '};', '-- #endif', '') -join [Environment]::NewLine
		$utf8 = [Text.UTF8Encoding]::new($true)
		$expectedBytes = [byte[]]($utf8.GetPreamble() + $utf8.GetBytes($expectedLua))
		$actualBytes = [IO.File]::ReadAllBytes($pathToLua)
		if ([Convert]::ToBase64String($actualBytes) -cne [Convert]::ToBase64String($expectedBytes)) {
			throw 'AssetDB output Lua did not match the expected file bytes.'
		}
		Write-Host 'AssetDB output Lua matched the expected bytes.'
	}
	if ($Tool -eq 'Item DB Compare Tool' -and !(Test-Path -LiteralPath (Join-Path $fixture 'itemDB-FULL.json') -PathType Leaf)) {
		throw 'The comparison tool did not produce its full JSON output.'
	}
	if ($Tool -eq 'Classic Item Detector' -and !(Test-Path -LiteralPath (Join-Path $fixture 'classicItemDB.json') -PathType Leaf)) {
		throw 'The detector did not produce its JSON database.'
	}

	foreach ($file in (Get-ChildItem -LiteralPath $fixture -Recurse -File -Force)) {
		if ($file.Extension -notin @('.json', '.lua', '.txt', '.log')) { continue }
		$content = [IO.File]::ReadAllText($file.FullName)
		if ($content.Contains($notice) -or $content.Contains($copyright) -or $content.Contains($licenseTitle) -or $content.Contains($licenseText)) {
			throw "$Tool wrote the MiniJSON notice to $($file.Name)."
		}
	}
}
catch {
	if ($null -ne $firstLine) { Write-Host $firstLine }
	throw
}
finally {
	if ($null -ne $process) {
		try {
			Stop-NoticeProcess $process
			[void]$process.WaitForExit(5000)
		}
		finally { $process.Dispose() }
	}
	Remove-Item -LiteralPath $fixture -Recurse -Force
}
