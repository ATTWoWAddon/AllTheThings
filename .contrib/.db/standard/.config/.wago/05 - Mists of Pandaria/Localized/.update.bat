@echo off

SET BUILD=%~1
set "FORCE_OVERWRITE="
if /i "%~2"=="force_overwrite" set "FORCE_OVERWRITE=1"
call :downloadlocalized HolidayNames
exit /b

:downloadlocalized
call "%SHARED%" download %1
for %%L in (deDE esES esMX frFR itIT koKR ptBR ruRU zhCN zhTW) do call "%SHARED%" downloadlocale %1 %%L
exit /b