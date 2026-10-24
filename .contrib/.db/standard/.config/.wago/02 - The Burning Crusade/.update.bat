@echo off
SET BUILD=2.5.6.70006
@REM Pass "force_overwrite" to refresh files already downloaded for this build.
set "FORCE_OVERWRITE="
if /i "%~1"=="force_overwrite" set "FORCE_OVERWRITE=1"

cd /d "%~dp0"
set "SHARED=%~dp0..\..\..\..\..\.tools\.wago.update.bat"

@REM Download new file versions
call "%SHARED%" download Achievement
call "%SHARED%" download AreaTable
call "%SHARED%" download ContentTuning
call "%SHARED%" download Criteria
call "%SHARED%" download CriteriaTree
call "%SHARED%" downloadrenamed Holiday Holidays
call "%SHARED%" download Item
call "%SHARED%" download ItemEffect
call "%SHARED%" download ItemModifiedAppearance
call "%SHARED%" download ItemSearchName
call "%SHARED%" download ModifierTree
call "%SHARED%" download SpellEffect
call "%SHARED%" download TaxiNodes
call "%SHARED%" download UiMap
call "%SHARED%" download UiMapAssignment
call "%SHARED%" download WorldMapOverlay

exit /b