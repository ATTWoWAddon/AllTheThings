@echo off
SET BUILD=1.60.1.70009

@REM Download new file versions
call :download Achievement
call :download AreaTable
@REM call :download ArtifactAppearance
call :download BattlePetSpecies
call :download ContentTuning
call :download Criteria
call :download CriteriaTree
@REM call :download GlyphProperties
call :downloadrenamed Holiday Holidays
call :downloadlocalized HolidayNames
@REM call :download HouseDecor
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
echo Downloading %1...
if not exist "%1.%BUILD%.csv" (
	if exist "%1*.csv" (
		del /Q "%1*.csv"
	)
	curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%"
)
exit /b

:downloadlocalized
call :downloadbaselocale %1
call :downloadlocale %1 deDE
call :downloadlocale %1 esES
call :downloadlocale %1 esMX
call :downloadlocale %1 frFR
call :downloadlocale %1 itIT
call :downloadlocale %1 koKR
call :downloadlocale %1 ptBR
call :downloadlocale %1 ruRU
call :downloadlocale %1 zhCN
call :downloadlocale %1 zhTW
exit /b

:downloadbaselocale
echo Downloading %1...
if not exist "%1.%BUILD%.csv" (
	if exist "%1*.csv" (
		del /Q "%1*.csv"
	)
	curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%"
)
exit /b

:downloadlocale
echo Downloading %1 for locale %2...
if not exist "%1.%2.%BUILD%.csv" (
	if exist "%1.%2*.csv" (
		del /Q "%1.%2*.csv"
	)
	curl -o "%1.%2.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%&locale=%2"
)
exit /b

:downloadrenamed
echo Downloading %2 as %1...
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
call "..\..\Release\net8.0\CSVCleaner.exe" "%~dp0\%1.%BUILD%.csv" "..\..\%1.regex"
exit /b
