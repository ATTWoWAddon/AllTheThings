@echo off

@REM Download Wrath Classic Achievement database
SET BUILD=3.4.4.60430
SET FILTER=
call :downloadlocalized Achievement
call :downloadlocalized AchievementCategory
call :download Criteria
call :downloadlocalized CriteriaTree

@REM Download Cataclysm Classic Achievement database, but ONLY for Agent of Shen'dralar
SET BUILD=4.4.2.60192
SET FILTER=^&filter^\[ID\]=exact%%3A5788
call :downloadlocalized Achievement
exit /b

:download
if not exist "%1.%BUILD%.csv" (
	if exist "%1*.csv" (
		del /Q "%1*.csv"
	)
	if "%1" == "WorldMapOverlay" (
		curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/worldmapoverlay/csv?build=%BUILD%"
	) else (
		curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%"
	)
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
if not exist "%1.%BUILD%.csv" (
	if "%1" == "AchievementCategory" (
		curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/Achievement_Category/csv?build=%BUILD%%FILTER%"
	) else (
		curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%%FILTER%"
	)
)
exit /b

:downloadlocale
if not exist "%1.%2.%BUILD%.csv" (
	if "%1" == "AchievementCategory" (
		curl -o "%1.%2.%BUILD%.csv" "https://wago.tools/db2/Achievement_Category/csv?build=%BUILD%&locale=%2%FILTER%"
	) else (
		curl -o "%1.%2.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%&locale=%2%FILTER%"
	)
)
exit /b