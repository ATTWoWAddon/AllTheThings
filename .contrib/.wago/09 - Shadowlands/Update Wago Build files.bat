@echo off
SET BUILD=9.2.7.45745

@REM Download new file versions
call :download Achievement
call :downloadrenamed AreaTable areatable
call :download ArtifactAppearance
call :downloadrenamed BattlePetSpecies battlepetspecies
call :download ContentTuning
call :download Criteria
call :download CriteriaTree
call :download GlyphProperties
call :downloadrenamed Holiday Holidays
call :download Item
call :download ItemEffect
call :download ItemModifiedAppearance
call :download ItemXItemEffect
call :download ItemSearchName
call :download ModifierTree
call :download SpellEffect
call :download TaxiNodes
call :download TransmogSet
call :download TransmogSetItem
call :download UiMap
call :download UiMapAssignment
call :downloadrenamed WorldMapOverlay worldmapoverlay

@REM Cleanup the SpellEffect file
call "..\Release\net8.0\CSVCleaner.exe" "%~dp0\SpellEffect.%BUILD%.csv" "..\SpellEffect.regex"
exit /b

:download
if not exist "%1.%BUILD%.csv" (
	if exist "%1*.csv" (
		del /Q "%1*.csv"
	)
	curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%"
)
exit /b

:downloadrenamed
if not exist "%1.%BUILD%.csv" (
	if exist "%1*.csv" (
		del /Q "%1*.csv"
	)
	curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%2/csv?build=%BUILD%"
)
exit /b