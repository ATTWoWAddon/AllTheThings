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
call :download ItemBonus
call :download ItemEffect
call :download ItemModifiedAppearance
call :download ItemXItemEffect
call :download ItemSearchName
call :download ModifierTree
call :download SkillLineAbility
call :download SpellEffect
call :download TaxiNodes
call :download TransmogSet
call :download TransmogSetItem
call :download UiMap
call :download UiMapAssignment
call :download WorldMapOverlay

@REM Run the locale update script from its own folder
pushd "%~dp0localized"
call "Update Wago Build Files.bat"
popd

@REM Cleanup the ItemBonus file
call "..\Release\net8.0\CSVCleaner.exe" "%~dp0\ItemBonus.csv" "..\ItemBonus.regex"
@REM Cleanup the SpellEffect file
call "..\Release\net8.0\CSVCleaner.exe" "%~dp0\SpellEffect.csv" "..\SpellEffect.regex"
exit /b

:download
curl -o "%1.csv" "https://wago.tools/db2/%1/csv"
exit /b

:downloadrenamed
curl -o "%1.csv" "https://wago.tools/db2/%2/csv"
exit /b
