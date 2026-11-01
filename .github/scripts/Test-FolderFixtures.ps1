function Invoke-FixtureProcess {
    param(
        [Parameter(Mandatory)][string]$Executable,
        [Parameter(Mandatory)][string]$WorkingDirectory,
        [string[]]$Arguments = @(),
        [Parameter(Mandatory)][string]$LogPath,
        [int]$TimeoutSeconds = 60
    )

    if (-not (Test-Path -LiteralPath $Executable -PathType Leaf)) {
        throw "Fixture executable not found: $Executable"
    }
    $start = [System.Diagnostics.ProcessStartInfo]::new()
    $start.FileName = $Executable
    $start.WorkingDirectory = $WorkingDirectory
    $start.UseShellExecute = $false
    $start.RedirectStandardOutput = $true
    $start.RedirectStandardError = $true
    $start.RedirectStandardInput = $true
    foreach ($argument in $Arguments) { $start.ArgumentList.Add($argument) }
    $process = [System.Diagnostics.Process]::new()
    $process.StartInfo = $start
    try {
        if (-not $process.Start()) { throw "Could not start $Executable" }
        $stdout = $process.StandardOutput.ReadToEndAsync()
        $stderr = $process.StandardError.ReadToEndAsync()
        # Classic Item Detector calls ReadLine after its offline harvest loop.
        try { $process.StandardInput.WriteLine('') } catch [System.IO.IOException] { }
        try { $process.StandardInput.Close() } catch [System.IO.IOException] { }
        $timedOut = -not $process.WaitForExit($TimeoutSeconds * 1000)
        if ($timedOut) {
            $process.Kill($true)
            $process.WaitForExit()
        }
        $outText = $stdout.GetAwaiter().GetResult()
        $errText = $stderr.GetAwaiter().GetResult()
        $log = "Executable: $Executable`r`nExit code: $($process.ExitCode)`r`nTimed out: $timedOut`r`n--- stdout ---`r`n$outText`r`n--- stderr ---`r`n$errText"
        [IO.File]::WriteAllText($LogPath, $log)
        if ($timedOut) { throw "Fixture timed out after $TimeoutSeconds seconds: $Executable (log: $LogPath)" }
        if ($process.ExitCode -ne 0) { throw "Fixture exited $($process.ExitCode): $Executable (log: $LogPath)" }
        if (-not [string]::IsNullOrWhiteSpace($errText)) { throw "Fixture produced stderr: $Executable (log: $LogPath)" }
        if ($outText -match '\bException\b') {
            throw "Fixture reported an exception: $Executable (log: $LogPath)"
        }
        return $outText
    }
    finally {
        $process.Dispose()
    }
}

function Invoke-ToolFixtures {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$CSVCleanerDir,
        [Parameter(Mandatory)][string]$HarvesterDir,
        [Parameter(Mandatory)][string]$ClassicDir,
        [Parameter(Mandatory)][string]$CompareDir,
        [Parameter(Mandatory)][ValidateSet('build', 'publish')][string]$Arch,
        [Parameter(Mandatory)][string]$Evidence
    )
    $ErrorActionPreference = 'Stop'
    if ([string]::IsNullOrWhiteSpace($env:RUNNER_TEMP)) { throw 'RUNNER_TEMP must be set.' }
    $cleanerDir = (Resolve-Path -LiteralPath $CSVCleanerDir).Path
    $harvesterDir = (Resolve-Path -LiteralPath $HarvesterDir).Path
    $classicDir = (Resolve-Path -LiteralPath $ClassicDir).Path
    $compareDir = (Resolve-Path -LiteralPath $CompareDir).Path
    $null = New-Item -ItemType Directory -Force -Path $Evidence
    $evidenceDir = (Resolve-Path -LiteralPath $Evidence).Path
    $work = Join-Path $env:RUNNER_TEMP ('att-tool-fixtures-' + $Arch + '-' + [guid]::NewGuid().ToString('N'))
    $null = New-Item -ItemType Directory -Path $work
    $nl = "`r`n"
    $results = [ordered]@{}

    # Sorting, quoted commas and multiline records, stable duplicate IDs, and invalid IDs.
    $csvDir = Join-Path $work 'csv'
    $null = New-Item -ItemType Directory -Path $csvDir
    $csv = Join-Path $csvDir 'sort.csv'
    $csvInput = @('ID,Name','2,"second,2"',"1,`"first`r`ncontinued`"",'2,"also"','x,"last"') -join $nl
    $csvExpected = @('ID,Name',"1,`"first`r`ncontinued`"",'2,"second,2"','2,"also"','x,"last"') -join $nl
    [IO.File]::WriteAllText($csv, $csvInput + $nl)
    $cleaner = Join-Path $cleanerDir 'CSVCleaner.exe'
    $null = Invoke-FixtureProcess -Executable $cleaner -WorkingDirectory $csvDir -Arguments @($csv) -LogPath (Join-Path $evidenceDir "$Arch-csv-sort.log")
    if ([IO.File]::ReadAllText($csv) -cne ($csvExpected + $nl)) { throw "CSV sort output mismatch ($Arch)." }
    $results['csvSort'] = 'passed'

    $csv = Join-Path $csvDir 'filtered.csv'
    $regex = Join-Path $csvDir 'filter.regex'
    [IO.File]::WriteAllText($csv, (@('ID,Name','2,keep','3,drop','1,keep') -join $nl) + $nl)
    [IO.File]::WriteAllText($regex, ',keep$' + $nl)
    $null = Invoke-FixtureProcess -Executable $cleaner -WorkingDirectory $csvDir -Arguments @($csv, $regex) -LogPath (Join-Path $evidenceDir "$Arch-csv-filter.log")
    if ([IO.File]::ReadAllText($csv) -cne ((@('ID,Name','1,keep','2,keep') -join $nl) + $nl)) { throw "CSV filter output mismatch ($Arch)." }
    $results['csvFilter'] = 'passed'

    # Supplying a fake key avoids the startup prompt. parse= disables network harvest.
    $harvester = Join-Path $work 'harvester'
    $raw = Join-Path $harvester 'RAW/items.20200101'
    $null = New-Item -ItemType Directory -Path $raw -Force
    $null = New-Item -ItemType Directory -Path (Join-Path $harvester 'DBs')
    if (Test-Path -LiteralPath (Join-Path $harvester 'Client.key')) { throw 'Unexpected Client.key in Harvester fixture directory.' }
    [IO.File]::WriteAllText((Join-Path $harvester 'API.key'), 'fixture')
    [IO.File]::WriteAllText((Join-Path $raw 'DATA.raw'), '{"_rawtype":"item","id":101,"name":"Fixture","level":10}')
    $output = Invoke-FixtureProcess -Executable (Join-Path $harvesterDir 'Blizzard API Harvester.exe') -WorkingDirectory $harvester -Arguments @('parse=20200101', 'item') -LogPath (Join-Path $evidenceDir "$Arch-harvester.log")
    if (Test-Path -LiteralPath (Join-Path $harvester 'Client.key')) { throw 'Unexpected Client.key after Harvester fixture.' }
    if ($output -match 'Harvesting\s+(Items|Quests)|Search URL:|https?://|Retry\s*-|TOO FAST!|FORBIDDEN|UNAUTHORIZED|missing.*API\.key|Failed adding parsed') { throw "Harvester reported network activity or an error ($Arch)." }
    if ($output -notmatch 'Harvester Complete!' -or $output -notmatch 'Done exporting the data\.') { throw "Harvester did not complete its export ($Arch)." }
    $dbPath = Join-Path $harvester 'DBs/itemDB-20200101.json'
    if (-not (Test-Path -LiteralPath $dbPath -PathType Leaf)) { throw "Harvester output missing ($Arch)." }
    $db = [IO.File]::ReadAllText($dbPath) | ConvertFrom-Json
    $items = @($db.items)
    if ($items.Count -ne 1 -or $items[0].itemID -ne 101 -or $items[0].name -cne 'Fixture' -or $items[0].iLvl -ne 10) { throw "Harvester output content mismatch ($Arch)." }
    $results['harvester'] = 'passed'

    # MaxClassicItemID=0 prevents the API request loop from running.
    $classic = Join-Path $work 'classic'
    $classicRaw = Join-Path $classic 'RAW/classicitems'
    $null = New-Item -ItemType Directory -Path $classicRaw -Force
    [IO.File]::WriteAllText((Join-Path $classic 'API.key'), 'fixture')
    [IO.File]::WriteAllText((Join-Path $classic 'MaxClassicItemID.txt'), '0')
    [IO.File]::WriteAllText((Join-Path $classicRaw '101.raw'), '{"id":101,"name":"Fixture","level":10}')
    $output = Invoke-FixtureProcess -Executable (Join-Path $classicDir 'Classic Item Detector.exe') -WorkingDirectory $classic -LogPath (Join-Path $evidenceDir "$Arch-classic.log")
    if ($output -notmatch 'Done exporting the data\.') { throw "Classic detector did not complete its export ($Arch)." }
    $ids = @(Get-Content -LiteralPath (Join-Path $classic 'classicItemIDs.json') -Raw | ConvertFrom-Json)
    $classicDB = Get-Content -LiteralPath (Join-Path $classic 'classicItemDB.json') -Raw | ConvertFrom-Json
    $items = @($classicDB.items)
    if ($ids.Count -ne 1 -or $ids[0] -ne 101 -or $items.Count -ne 1 -or $items[0].itemID -ne 101 -or $items[0].name -cne 'Fixture' -or $items[0].iLvl -ne 10) { throw "Classic detector output content mismatch ($Arch)." }
    $results['classic'] = 'passed'

    # Compare two databases; verify changed, added, and cumulative items.
    $compare = Join-Path $work 'compare'
    $null = New-Item -ItemType Directory -Path $compare
    [IO.File]::WriteAllText((Join-Path $compare 'itemDB-1.json'), '{"items":[{"itemID":101,"name":"Before"}]}')
    [IO.File]::WriteAllText((Join-Path $compare 'itemDB-2.json'), '{"items":[{"itemID":101,"name":"After"},{"itemID":102,"name":"New"}]}')
    $output = Invoke-FixtureProcess -Executable (Join-Path $compareDir 'Item DB Compare Tool.exe') -WorkingDirectory $compare -LogPath (Join-Path $evidenceDir "$Arch-compare.log")
    foreach ($name in @('itemDB-2-DIFF.json', 'itemDB-2-MISS.json', 'itemDB-FULL.json')) {
        if (-not (Test-Path -LiteralPath (Join-Path $compare $name) -PathType Leaf)) { throw "Compare output $name missing ($Arch)." }
    }
    $diff = Get-Content -LiteralPath (Join-Path $compare 'itemDB-2-DIFF.json') -Raw | ConvertFrom-Json
    $miss = Get-Content -LiteralPath (Join-Path $compare 'itemDB-2-MISS.json') -Raw | ConvertFrom-Json
    $full = Get-Content -LiteralPath (Join-Path $compare 'itemDB-FULL.json') -Raw | ConvertFrom-Json
    $diffItems = @($diff.items); $fullItems = @($full.items)
    if ($diffItems.Count -ne 2 -or @($miss.items).Count -ne 0 -or $fullItems.Count -ne 2 -or
        @($diffItems | Where-Object { $_.itemID -eq 101 -and $_.name -ceq 'After' }).Count -ne 1 -or
        @($diffItems | Where-Object { $_.itemID -eq 102 -and $_.name -ceq 'New' }).Count -ne 1 -or
        @($fullItems | Where-Object { $_.itemID -eq 101 -and $_.name -ceq 'After' }).Count -ne 1 -or
        @($fullItems | Where-Object { $_.itemID -eq 102 -and $_.name -ceq 'New' }).Count -ne 1) {
        throw "Compare output content mismatch ($Arch)."
    }
    $results['compare'] = 'passed'

    $summary = [pscustomobject]@{ architecture = $Arch; fixtures = $results }
    $summary | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $evidenceDir "$Arch-fixtures.json") -Encoding utf8
    return $summary
}
