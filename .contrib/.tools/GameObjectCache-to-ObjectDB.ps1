param(
	[string]$CachePath = ".contrib/debugger exports from players/gameobjectcache.wdb",
	[string]$OutputPath = ".contrib/.db/shared/objects/Dynamic/GameObjectCache 1.60.1.lua",
	[string]$Build = "1.60.1.70009",
	[switch]$Force
)

$ErrorActionPreference = "Stop"
$repoRoot = (Get-Location).Path
$cachePath = Join-Path $repoRoot $CachePath
$outputPath = Join-Path $repoRoot $OutputPath
$objectRoot = Join-Path $repoRoot ".contrib/.db/shared/objects"
$objectDbPath = Join-Path $objectRoot "ObjectDB.lua"
$conditionalsPath = Join-Path $objectRoot "ObjectDBConditionals.lua"
$dynamicPath = Join-Path $objectRoot "Dynamic"
$csvUrl = "https://wago.tools/db2/GameObjectDisplayInfo/csv?build=$Build"

if (-not (Test-Path $cachePath)) { throw "Cache file not found: $cachePath" }
if ((Test-Path $outputPath) -and -not $Force) { throw "Output already exists; use -Force to regenerate: $outputPath" }

$bytes = [IO.File]::ReadAllBytes($cachePath)
$magic = [Text.Encoding]::ASCII.GetString($bytes, 0, 4)
if ($magic -notin @("BOGW", "WGOB")) { throw "Unexpected cache signature: $magic" }

$displayFileIDs = @{}
$displayRows = (Invoke-WebRequest -Uri $csvUrl -UseBasicParsing).Content | ConvertFrom-Csv
foreach ($row in $displayRows) {
	if ($row.ID -match '^\d+$' -and $row.FileDataID -match '^\d+$') {
		$displayFileIDs[[uint32]$row.ID] = [uint32]$row.FileDataID
	}
}

$existingModels = @{}
$objectDataFiles = @($objectDbPath, $conditionalsPath) + @(
	Get-ChildItem $dynamicPath -Filter "*.lua" |
		Where-Object { $_.FullName -ne $outputPath } |
		ForEach-Object { $_.FullName }
)
$entryPattern = '(?ms)^[\t ]*\[(\d+)\]\s*=\s*\{(?<body>.*?)(?=^[\t ]*\[\d+\]\s*=\s*\{|\z)'
foreach ($filePath in $objectDataFiles) {
	$content = [IO.File]::ReadAllText($filePath)
	foreach ($entry in [regex]::Matches($content, $entryPattern)) {
		$id = [uint32]$entry.Groups[1].Value
		$modelMatch = [regex]::Match($entry.Groups["body"].Value, '(?m)^[\t ]*model\s*=\s*(\d+)')
		if ($modelMatch.Success) { $existingModels[$id] = [uint32]$modelMatch.Groups[1].Value }
	}
	foreach ($idMatch in [regex]::Matches($content, 'ObjectDB\[(\d+)\]')) {
		$id = [uint32]$idMatch.Groups[1].Value
		if (-not $existingModels.ContainsKey($id)) { $existingModels[$id] = $null }
	}
}

$records = [Collections.Generic.List[object]]::new()
$offset = 24
while ($offset + 8 -le $bytes.Length) {
	$objectID = [BitConverter]::ToUInt32($bytes, $offset)
	$recordLength = [BitConverter]::ToUInt32($bytes, $offset + 4)
	if ($recordLength -eq 0) { break }
	if ($recordLength -lt 8 -or $offset + 8 + [long]$recordLength -gt $bytes.Length) {
		throw "Invalid record length $recordLength at byte $offset"
	}

	$recordStart = $offset + 8
	$objectType = [BitConverter]::ToUInt32($bytes, $recordStart)
	$displayID = [BitConverter]::ToUInt32($bytes, $recordStart + 4)
	$nameEnd = [Array]::IndexOf($bytes, [byte]0, $recordStart + 8)
	$name = ""
	if ($nameEnd -ge 0 -and $nameEnd -lt $recordStart + $recordLength) {
		$name = [Text.Encoding]::UTF8.GetString($bytes, $recordStart + 8, $nameEnd - $recordStart - 8)
	}

	$fileDataID = $null
	if ($displayFileIDs.ContainsKey($displayID)) { $fileDataID = $displayFileIDs[$displayID] }
	$records.Add([pscustomobject]@{
		ObjectID = $objectID
		ObjectType = $objectType
		DisplayID = $displayID
		FileDataID = $fileDataID
		Name = $name
	})
	$offset += 8 + [int]$recordLength
}

function ConvertTo-LuaString([string]$value) {
	$value = $value.Replace('\', '\\').Replace('"', '\"').Replace("`r", '\r').Replace("`n", '\n')
	return '"' + $value + '"'
}

$lines = [Collections.Generic.List[string]]::new()
$lines.Add("-- Generated from GameObjectCache.wdb and Wago GameObjectDisplayInfo build $Build.")
$lines.Add("local ObjectDB = ObjectDB; for objectID,objectData in pairs({")
$added = 0
$modelConflicts = [Collections.Generic.List[string]]::new()
foreach ($record in ($records | Sort-Object ObjectID)) {
	if ($existingModels.ContainsKey($record.ObjectID)) {
		$existingModel = $existingModels[$record.ObjectID]
		if ($null -eq $existingModel -and $record.FileDataID -and $record.FileDataID -gt 0) {
			$lines.Add("`t[$($record.ObjectID)] = { model = $($record.FileDataID) },")
			$added++
		} elseif ($record.FileDataID -and $record.FileDataID -gt 0 -and $existingModel -ne $record.FileDataID) {
			$modelConflicts.Add("$($record.ObjectID): existing model $existingModel, cache model $($record.FileDataID)")
		}
		continue
	}
	if (-not $record.Name -and (-not $record.FileDataID -or $record.FileDataID -eq 0)) { continue }

	$luaName = ConvertTo-LuaString $record.Name
	$lines.Add("`t[$($record.ObjectID)] = {")
	if ($record.Name) { $lines.Add("`t`treadable = $luaName,") }
	if ($record.FileDataID -and $record.FileDataID -gt 0) { $lines.Add("`t`tmodel = $($record.FileDataID),") }
	if ($record.Name) {
		$lines.Add("`t`ttext = {")
		$lines.Add("`t`t`ten = $luaName,")
		$lines.Add("`t`t},")
	}
	$lines.Add("`t},")
	$added++
}
$lines.Add("}) do")
$lines.Add("`tObjectDB[objectID] = objectData")
$lines.Add("end")
[IO.File]::WriteAllText($outputPath, ($lines -join "`n") + "`n", [Text.UTF8Encoding]::new($false))

"Cache records parsed: $($records.Count)"
"Entries added: $added"
"Missing FileDataID mappings: $(@($records | Where-Object { $null -eq $_.FileDataID }).Count)"
$records | Where-Object { $null -eq $_.FileDataID } | Select-Object ObjectID, DisplayID, Name | Format-Table -AutoSize
"Existing model conflicts: $($modelConflicts.Count)"
$modelConflicts | Select-Object -First 30