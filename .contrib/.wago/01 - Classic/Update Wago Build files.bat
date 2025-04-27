@echo off
SET BUILD=1.15.7.60277

@REM Download new file versions
call :download Item
call :download ItemEffect
call :download ItemModifiedAppearance
call :download ItemSearchName
call :download ModifierTree
call :download SpellEffect
call :download TaxiNodes

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