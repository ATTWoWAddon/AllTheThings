param([Parameter(Mandatory)][string]$Mode, [Parameter(Mandatory)][string]$Executable, [Parameter(Mandatory)][string]$Directory)
$ErrorActionPreference = 'Stop'
Write-Host ('Fixture host architecture: {0}-bit' -f ([IntPtr]::Size * 8))
New-Item -ItemType Directory -Path $Directory -Force | Out-Null
[Environment]::CurrentDirectory = $Directory
Set-Location -LiteralPath $Directory
$assembly = [Reflection.Assembly]::LoadFrom($Executable)
if ($Mode -eq 'harvester') {
    $type = $assembly.GetType('MiniJSON.Json', $true)
    $deserialize = $type.GetMethod('Deserialize')
    $serialize = $type.GetMethod('Serialize')
    $fixture = '{"id":42,"name":"' + [char]0x6e2c + [char]0x8a66 + '\"value","enabled":true,"values":[1,2,1.5],"nested":{"value":null}}'
    $data = $deserialize.Invoke($null, [object[]]@($fixture))
    $args1 = New-Object 'object[]' 1; $args1[0] = $data
    $encoded = $serialize.Invoke($null, $args1)
    $decoded = $deserialize.Invoke($null, [object[]]@($encoded))
    foreach ($item in @($data, $decoded)) {
        if ($item['id'] -ne 42 -or $item['name'] -ne ([string][char]0x6e2c + [char]0x8a66 + '"value') -or $item['enabled'] -ne $true -or
            $item['values'].Count -ne 3 -or $item['values'][0] -ne 1 -or $item['values'][1] -ne 2 -or $item['values'][2] -ne 1.5 -or
            -not $item['nested'].ContainsKey('value') -or $null -ne $item['nested']['value']) { throw 'MiniJSON fixture failed' }
    }
    [IO.File]::WriteAllText((Join-Path $Directory 'roundtrip.json'), $encoded, (New-Object Text.UTF8Encoding $false))
} elseif ($Mode -eq 'classic') {
    New-Item -ItemType Directory -Path (Join-Path $Directory 'RAW/classicitems') -Force | Out-Null
    [IO.File]::WriteAllText((Join-Path $Directory 'RAW/classicitems/1001.raw'), '{"id":1001,"name":"Fixture Classic","is_equippable":true,"level":10,"required_level":5}')
    [IO.File]::WriteAllText((Join-Path $Directory 'itemDB.json'), '{"items":[{"itemID":1001,"requiredSkill":164,"spellID":42}]}')
    $type = $assembly.GetType('Classic_Item_Detector.Program', $true)
    $method = $type.GetMethod('Parse', [Reflection.BindingFlags]'NonPublic,Static')
    if ($null -eq $method) { throw 'Classic Parse method missing' }
    $method.Invoke($null, $null) | Out-Null
    foreach ($file in 'RAW_classicItemDB.json', 'classicItemIDs.json', 'classicItemDB.json') {
        $path = Join-Path $Directory $file
        if (-not (Test-Path -LiteralPath $path) -or (Get-Item -LiteralPath $path).Length -eq 0) { throw "Missing output: $file" }
    }
    $ids = @(Get-Content -Raw 'classicItemIDs.json' | ConvertFrom-Json)
    $json = Get-Content -Raw 'classicItemDB.json' | ConvertFrom-Json
    $item = $json.items[0]
    if ($ids.Count -ne 1 -or $ids[0] -ne 1001 -or $json.items.Count -ne 1 -or $item.itemID -ne 1001 -or
        $item.name -ne 'Fixture Classic' -or $item.equippable -ne $true -or $item.iLvl -ne 10 -or $item.Lvl -ne 5 -or
        $item.requiredSkill -ne 164 -or $item.spellID -ne 42) { throw 'Classic fixture failed' }
} else { throw "Unknown fixture: $Mode" }
