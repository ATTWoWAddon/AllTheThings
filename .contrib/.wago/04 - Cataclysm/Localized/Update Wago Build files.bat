@echo off

@REM Download Cataclysm Classic database
SET BUILD=4.4.2.60192
call :downloadlocalized HolidayNames
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
		curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/Achievement_Category/csv?build=%BUILD%"
	) else (
		curl -o "%1.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%"
	)
)
exit /b

:downloadlocale
if not exist "%1.%2.%BUILD%.csv" (
	if "%1" == "AchievementCategory" (
		curl -o "%1.%2.%BUILD%.csv" "https://wago.tools/db2/Achievement_Category/csv?build=%BUILD%&locale=%2"
	) else (
		curl -o "%1.%2.%BUILD%.csv" "https://wago.tools/db2/%1/csv?build=%BUILD%&locale=%2"
	)
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