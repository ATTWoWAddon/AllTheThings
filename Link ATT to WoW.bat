:: Run this batch script to link the AllTheThings addon with all non-PTR versions of the game.
:: If it does NOT report "Linking using root WoW folder: ..." in the command output, then make sure to add your personal WoW install directory
:: into the :do_links label of the script similar to existing examples
@echo off
SETLOCAL
pushd %~dp0

:: Set the target folder name (case-insensitive match)
set "TargetName=World of Warcraft"
set "MatchedDir="
set "Name="
set "Parent="

:: Start from the batch’s directory (without trailing backslash)
set "Dir=%~dp0"
if "%Dir:~-1%"=="\" set "Dir=%Dir:~0,-1%"

:Up
:: Extract folder name and parent
for %%F in ("%Dir%") do (
    set "Name=%%~nxF"
    set "Parent=%%~dpF"
)

:: Compare
if /I "%Name%"=="%TargetName%" (
    set "MatchedDir=%Dir%"
    goto :Found
)

:: If we’re at root, stop
if "%Parent:~-2%"==":\" goto :NotFound

:: Move up one level
set "Dir=%Parent:~0,-1%"

goto :Up

:Found
echo Found target folder: %MatchedDir%
goto :do_links

:NotFound
echo Target folder "%TargetName%" not found in folder heirarchy above this file
goto :do_links

:do_links
if defined MatchedDir (
    call :link_wowfolder "%MatchedDir%"
) else (
    call :link_wowfolder "C:\Program Files\World of Warcraft"
    call :link_wowfolder "C:\Program Files (x86)\World of Warcraft"
    call :link_wowfolder "..\World of Warcraft"
    call :link_wowfolder "..\Blizzard\World of Warcraft"
    call :link_wowfolder "F:\World of Warcraft"
)
call :report_taskcomplete
EXIT /B 0

:link_wowfolder
if exist "%~1\" (
    echo "Linking using root WoW folder: %~1"
    call :link_expansion "%~1\_anniversary_"
    call :link_expansion "%~1\_classic_"
    call :link_expansion "%~1\_classic_era_"
    call :link_expansion "%~1\_classic_beta_"
    call :link_expansion "%~1\_classic_ptr_"
    call :link_expansion "%~1\_classic_era_ptr_"
    call :link_expansion "%~1\_retail_"
    call :link_beta "%~1\_beta_"
    call :link_ptr "%~1\_ptr_"
    call :link_ptr "%~1\_xptr_"
)
EXIT /B 0

:link_expansion
if exist "%~1\" (
    echo Linking Expansion "%~1\"
    if exist "%~1\Interface\AddOns\AllTheThings" (
        rmdir /s /q "%~1\Interface\AddOns\AllTheThings"
    )
    if NOT exist "%~1\Interface\AddOns\AllTheThings" (
        if NOT exist "%~1\Interface" (
            mkdir "%~1\Interface"
        )
        if NOT exist "%~1\Interface\AddOns" (
            mkdir "%~1\Interface\AddOns"
        )
        mklink /J "%~1\Interface\AddOns\AllTheThings" "%cd%"
    )
)
EXIT /B 0

echo Defining :link_beta
:link_beta
if exist "%~1\" (
    echo Linking BETA "%~1\"
    net session >nul 2>&1
    if %errorLevel% == 0 (
        call :link_beta_files "%~1\Interface\AddOns\AllTheThings"
    )
)
EXIT /B 0

:link_beta_files
echo Linking BETA Files "%~1\"
if exist "%~1\" (
    rmdir /s /q "%~1\"
)
if NOT exist "%~1\" (
    mkdir "%~1\"
    mkdir "%~1\db"
    mkdir "%~1\db\Standard"
    mklink /J "%~1\db\Standard\Categories" "%cd%\db\.beta\Categories"
    mklink "%~1\db\Standard\Categories.xml" "%cd%\db\.beta\Categories.xml"
    mklink "%~1\db\Standard\LocalizationDB.lua" "%cd%\db\.beta\LocalizationDB.lua"
    mklink "%~1\db\Standard\ReferenceDB.lua" "%cd%\db\.beta\ReferenceDB.lua"
    mklink /J "%~1\assets" "%cd%\assets"
    mklink /J "%~1\lib" "%cd%\lib"
    mklink /J "%~1\locales" "%cd%\locales"
    mklink /J "%~1\src" "%cd%\src"

    mklink "%~1\AllTheThings.lua" "%cd%\AllTheThings.lua"
    mklink "%~1\AllTheThings.toc" "%cd%\AllTheThings.toc"
    mklink "%~1\Bindings.xml" "%cd%\Bindings.xml"
)
EXIT /B 0

:link_ptr
if exist "%~1\" (
    echo Linking PTR "%~1\"
    net session >nul 2>&1
    if %errorLevel% == 0 (
        call :link_ptr_files "%~1\Interface\AddOns\AllTheThings"
    )
)
EXIT /B 0

:link_ptr_files
echo Linking PTR Files "%~1\"
if exist "%~1\" (
    rmdir /s /q "%~1\"
)
if NOT exist "%~1\" (
    mkdir "%~1\"
    mkdir "%~1\db"
    mkdir "%~1\db\Standard"
    mklink /J "%~1\db\Standard\Categories" "%cd%\db\.ptr\Categories"
    mklink "%~1\db\Standard\Categories.xml" "%cd%\db\.ptr\Categories.xml"
    mklink "%~1\db\Standard\LocalizationDB.lua" "%cd%\db\.ptr\LocalizationDB.lua"
    mklink "%~1\db\Standard\ReferenceDB.lua" "%cd%\db\.ptr\ReferenceDB.lua"
    mklink /J "%~1\assets" "%cd%\assets"
    mklink /J "%~1\lib" "%cd%\lib"
    mklink /J "%~1\locales" "%cd%\locales"
    mklink /J "%~1\src" "%cd%\src"

    mklink "%~1\AllTheThings.lua" "%cd%\AllTheThings.lua"
    mklink "%~1\AllTheThings.toc" "%cd%\AllTheThings.toc"
    mklink "%~1\Bindings.xml" "%cd%\Bindings.xml"
)
EXIT /B 0

:report_taskcomplete
echo Task Complete!
set /p DUMMY=Hit ENTER to close...
EXIT /B 0
