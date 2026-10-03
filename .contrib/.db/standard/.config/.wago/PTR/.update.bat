@echo off

@REM Delete all other files first
del /Q "%1*.csv"

@REM Download new file versions
call :download Achievement
call :download AreaTable
call :download ArtifactAppearance
call :download BattlePetSpecies
call :download ContentTuning
call :download Criteria
call :download CriteriaTree
call :download GlyphProperties
call :downloadrenamed Holiday Holidays
call :download HouseDecor
call :download Item
call :downloadcleaned ItemBonus
call :download ItemEffect
call :download ItemModifiedAppearance
call :download ItemXItemEffect
call :download ItemSearchName
call :download ModifierTree
call :download SkillLineAbility
call :downloadcleaned SpellEffect
call :download TaxiNodes
call :download TransmogSet
call :download TransmogSetItem
call :download UiMap
call :download UiMapAssignment
call :download WorldMapOverlay

exit /b

:download
curl -o "%1.csv" "https://wago.tools/db2/%1/csv"
exit /b

:downloadrenamed
curl -o "%1.csv" "https://wago.tools/db2/%2/csv"
exit /b

:downloadcleaned
call :download %1
echo Cleaning %1...
cd "..\..\..\..\..\.tools\"
call "CSVCleaner.exe" "%~dp0\%1.csv" "%1.regex"
cd /d "%~dp0"
exit /b