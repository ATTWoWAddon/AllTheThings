@echo off
SET BUILD=3.4.4.60430

@REM Download new file versions
call :downloadrenamed AreaTable areatable
call :download ContentTuning
call :downloadrenamed Holiday Holidays
call :download Item
call :download ItemEffect
call :download ItemModifiedAppearance
call :download ItemSearchName
call :download ModifierTree
call :download SpellEffect
call :download TaxiNodes
call :download UiMap
call :download UiMapAssignment

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