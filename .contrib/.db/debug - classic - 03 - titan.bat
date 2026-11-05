@echo off
cd /d "%~dp0..\.tools\"
"Parser.exe" debug baseconfig="../.db/standard/.config/retail/retail.config" config="../.db/shared/.config/debug.config" config="../.db/standard/.config/classic/03 - Titan Reforged.config"
exit /b %ERRORLEVEL%
