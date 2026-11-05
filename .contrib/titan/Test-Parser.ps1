param([string]$RepoRoot = (Join-Path $PSScriptRoot '..\..'))
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$RepoRoot = (Resolve-Path $RepoRoot).Path
if ($PSVersionTable.PSEdition -ne 'Desktop' -or [IntPtr]::Size -ne 8) {
    throw 'Run this suite with 64-bit Windows PowerShell 5.1.'
}
$tools = Join-Path $RepoRoot '.contrib\.tools'
$parser = Join-Path $tools 'Parser.exe'
$driver = Join-Path $tools ("ParserIntegrationTests-" + [Guid]::NewGuid().ToString('N') + '.exe')
$driverConfig = "$driver.config"
$compiler = Join-Path ([Runtime.InteropServices.RuntimeEnvironment]::GetRuntimeDirectory()) 'csc.exe'
if (-not (Test-Path -LiteralPath $compiler -PathType Leaf)) { throw '.NET Framework csc.exe was not found.' }
$oldPath = $env:PATH
Push-Location $tools
try {
    $env:PATH = "$tools;$oldPath"
    $source = Join-Path $PSScriptRoot 'ParserIntegrationTests.cs'
    & $compiler /nologo /target:exe /platform:x64 /langversion:5 "/out:$driver" $source
    if ($LASTEXITCODE -ne 0) { throw "Parser fixture compilation failed with exit code $LASTEXITCODE." }

    # Use the CI-built Parser's binding redirects in a fresh CLR process.
    Copy-Item -LiteralPath "$parser.config" -Destination $driverConfig
    & $driver $RepoRoot $parser
    if ($LASTEXITCODE -ne 0) { throw "Compiled Parser fixtures failed with exit code $LASTEXITCODE." }
} finally {
    Remove-Item -LiteralPath $driver, $driverConfig -Force -ErrorAction SilentlyContinue
    $env:PATH = $oldPath
    Pop-Location
}
