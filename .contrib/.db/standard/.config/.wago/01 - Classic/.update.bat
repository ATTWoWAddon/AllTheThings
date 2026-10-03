@echo off
SET BUILD=1.15.9.69722

@REM Download new file versions
call :download Achievement
call :downloadrenamed AreaTable areatable
call :download Criteria
call :download CriteriaTree
call :download ContentTuning
call :downloadrenamed Holiday Holidays
call :download Item
call :download ItemEffect
call :download ItemModifiedAppearance
call :download ItemSearchName
call :download ModifierTree
call :downloadcleaned SpellEffect
call :download TaxiNodes
call :download UiMap
call :download UiMapAssignment
call :download WorldMapOverlay

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

:downloadcleaned
call :download %1
echo Cleaning %1...
cd "..\..\..\..\..\.tools\"
call "CSVCleaner.exe" "%~dp0\%1.%BUILD%.csv" "%1.regex"
cd /d "%~dp0"
exit /b