#Requires -Version 5.1
<#
.SYNOPSIS
Tests cost merging in an existing x64 Parser.exe, without running a parse.
.EXAMPLE
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\CostMerge.Tests.ps1 -ParserPath ..\..\..\.tools\Parser.exe
.NOTES
Requires Windows and .NET Framework 4.8, with no additional test packages.
Keep the Parser's managed and native dependencies beside Parser.exe.
A separate x64 test executable also supports an ARM64 PowerShell launcher.
#>
[CmdletBinding()]
param(
	[Parameter(Mandatory = $true)]
	[string] $ParserPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$resolvedParserPath = (Resolve-Path -LiteralPath $ParserPath).ProviderPath
$parserDirectory = [IO.Path]::GetDirectoryName($resolvedParserPath)
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework64\v4.0.30319\csc.exe'
if (-not (Test-Path -LiteralPath $compiler -PathType Leaf)) {
	$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework\v4.0.30319\csc.exe'
}
if (-not (Test-Path -LiteralPath $compiler -PathType Leaf)) {
	throw 'The .NET Framework C# compiler was not found.'
}

$fixtureDirectory = Join-Path ([IO.Path]::GetTempPath()) ('ATT-CostMerge-' + [Guid]::NewGuid().ToString('N'))
try {
	[void] [IO.Directory]::CreateDirectory($fixtureDirectory)
	$parserCopy = Join-Path $fixtureDirectory 'Parser.exe'
	Copy-Item -LiteralPath $resolvedParserPath -Destination $parserCopy
	Get-ChildItem -LiteralPath $parserDirectory -Filter '*.dll' -File |
		Copy-Item -Destination $fixtureDirectory

	$testHost = Join-Path $fixtureDirectory 'CostMerge.Tests.exe'
	$parserConfig = $resolvedParserPath + '.config'
	if (Test-Path -LiteralPath $parserConfig -PathType Leaf) {
		Copy-Item -LiteralPath $parserConfig -Destination ($testHost + '.config')
	}

	# Compile an x64 host instead of loading the x64 Parser into PowerShell.
	$sourcePath = Join-Path $fixtureDirectory 'CostMerge.Tests.cs'
	Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'CostMerge.Tests.cs') -Destination $sourcePath
	$compilerArguments = @('/nologo', '/target:exe', '/platform:x64', '/optimize+',
		('/out:' + $testHost), ('/reference:' + $parserCopy), '/reference:System.Core.dll', $sourcePath)
	& $compiler @compilerArguments
	if ($LASTEXITCODE -ne 0) {
		throw "Compiling the x64 test host failed with exit code $LASTEXITCODE."
	}

	$process = Start-Process -FilePath $testHost -WorkingDirectory $fixtureDirectory -NoNewWindow -PassThru
	try {
		[void] $process.Handle
		if (-not $process.WaitForExit(45000)) {
			$process.Kill()
			throw 'Cost merge tests exceeded the 45-second timeout.'
		}
		if ($process.ExitCode -ne 0) {
			throw "Cost merge tests failed with exit code $($process.ExitCode)."
		}
	}
	finally {
		$process.Dispose()
	}
}
finally {
	for ($attempt = 1; $attempt -le 10; $attempt++) {
		try {
			if (Test-Path -LiteralPath $fixtureDirectory) {
				Remove-Item -LiteralPath $fixtureDirectory -Recurse -Force -ErrorAction Stop
			}
			break
		}
		catch {
			if ($attempt -eq 10) {
				Write-Warning -WarningAction Continue "Could not remove test fixture '$fixtureDirectory': $($_.Exception.Message)"
			}
			else {
				Start-Sleep -Milliseconds 150
			}
		}
	}
}
