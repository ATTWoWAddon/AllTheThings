#Requires -Version 5.1
<#
.SYNOPSIS
Tests locale fallback and debug export using an existing x64 Parser.exe.
.EXAMPLE
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\LocalizationFallback.Tests.ps1 -ParserPath ..\..\..\.tools\Parser.exe
.NOTES
Requires Windows and .NET Framework 4.8. Parser dependencies must be beside Parser.exe.
The test uses synthetic data in a temporary directory and does not run a full parse.
#>
[CmdletBinding()]
param(
	[Parameter(Mandatory = $true)]
	[string] $ParserPath
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$resolvedParser = (Resolve-Path -LiteralPath $ParserPath).ProviderPath
$parserDirectory = [IO.Path]::GetDirectoryName($resolvedParser)
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework64\v4.0.30319\csc.exe'
if (!(Test-Path -LiteralPath $compiler -PathType Leaf)) { throw 'The x64 .NET Framework C# compiler was not found.' }
$fixture = Join-Path ([IO.Path]::GetTempPath()) ('ATT-LocaleFallback-' + [Guid]::NewGuid().ToString('N'))
try {
	[void] [IO.Directory]::CreateDirectory($fixture)
	$parserCopy = Join-Path $fixture 'Parser.exe'
	Copy-Item -LiteralPath $resolvedParser -Destination $parserCopy
	Get-ChildItem -LiteralPath $parserDirectory -Filter '*.dll' -File | Copy-Item -Destination $fixture
	$testHost = Join-Path $fixture 'LocalizationFallback.Tests.exe'
	$parserConfig = $resolvedParser + '.config'
	if (Test-Path -LiteralPath $parserConfig -PathType Leaf) { Copy-Item -LiteralPath $parserConfig -Destination ($testHost + '.config') }
	$sourcePath = Join-Path $fixture 'LocalizationFallback.Tests.cs'
	Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'LocalizationFallback.Tests.cs') -Destination $sourcePath
	& $compiler /nologo /target:exe /platform:x64 "/out:$testHost" $sourcePath
	if ($LASTEXITCODE -ne 0) { throw "Failed to compile locale fallback test host: $LASTEXITCODE" }
	$arguments = @(('"' + $parserCopy + '"'), ('"' + (Join-Path $fixture 'data') + '"'))
	$process = Start-Process -FilePath $testHost -ArgumentList $arguments -WorkingDirectory $fixture -NoNewWindow -PassThru
	try {
		[void] $process.Handle
		if (!$process.WaitForExit(45000)) {
			$process.Kill()
			throw 'Locale fallback tests exceeded the 45-second timeout.'
		}
		if ($process.ExitCode -ne 0) { throw "Locale fallback tests failed: $($process.ExitCode)" }
	} finally { $process.Dispose() }
} finally {
	if (Test-Path -LiteralPath $fixture) { Remove-Item -LiteralPath $fixture -Recurse -Force }
}
