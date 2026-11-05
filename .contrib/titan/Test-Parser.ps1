param([string]$RepoRoot = (Join-Path $PSScriptRoot '..\..'))
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$RepoRoot = (Resolve-Path $RepoRoot).Path
if ([IntPtr]::Size -ne 8) { throw 'Run this suite with 64-bit Windows PowerShell.' }
$tools = Join-Path $RepoRoot '.contrib\.tools'
$oldPath = $env:PATH
Push-Location $tools
try {
    $env:PATH = "$tools;$oldPath"
    $assembly = [Reflection.Assembly]::LoadFrom((Join-Path $tools 'Parser.exe'))
    Add-Type -Path (Join-Path $PSScriptRoot 'ParserIntegrationTests.cs')
    [TitanParserIntegration]::Run($RepoRoot, $assembly) | Out-Null
} finally {
    $env:PATH = $oldPath
    Pop-Location
}
