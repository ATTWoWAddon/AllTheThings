@echo off
SET BUILD=1.60.1.70707
@REM Pass "force_overwrite" to refresh files already downloaded for this build.
set "FORCE_OVERWRITE="
if /i "%~1"=="force_overwrite" set "FORCE_OVERWRITE=1"

cd /d "%~dp0"
set "SHARED=%~dp0..\..\..\..\.tools\.wago.update.bat"

@REM Download new file versions
call "%SHARED%" download Achievement
call "%SHARED%" download AreaTable
@REM call "%SHARED%" download ArtifactAppearance
call "%SHARED%" download BattlePetSpecies
call "%SHARED%" download ContentTuning
call "%SHARED%" download Criteria
call "%SHARED%" download CriteriaTree
@REM call "%SHARED%" download GlyphProperties
call "%SHARED%" downloadrenamed Holiday Holidays
@REM call "%SHARED%" download HouseDecor
call "%SHARED%" download Item
call "%SHARED%" downloadcleaned ItemBonus
call "%SHARED%" download ItemEffect
call "%SHARED%" download ItemModifiedAppearance
call "%SHARED%" download ItemXItemEffect
call "%SHARED%" download ItemSearchName
call "%SHARED%" download ModifierTree
call "%SHARED%" download SkillLineAbility
call "%SHARED%" download SpellEffect
call "%SHARED%" download TaxiNodes
call "%SHARED%" download TransmogSet
call "%SHARED%" download TransmogSetItem
call "%SHARED%" download UiMap
call "%SHARED%" download UiMapAssignment
call "%SHARED%" download WorldMapOverlay

call :downloadlocalized HolidayNames

exit /b

:downloadlocalized
call "%SHARED%" download %1
for %%L in (deDE esES esMX frFR itIT koKR ptBR ruRU zhCN zhTW) do call "%SHARED%" downloadlocale %1 %%L
exit /b
