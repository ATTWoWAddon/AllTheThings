@echo off
SET BUILD=1.15.9.70576

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

@REM Run the locale update script from its own folder
pushd "%~dp0localized"
call ".update.bat" %BUILD% %~1
popd

exit /b