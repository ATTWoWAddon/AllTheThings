@echo off
cd /d "%~dp0..\.tools\"
"Parser.exe" baseconfig="../.db/standard/.config/retail/retail.config" config="../.db/standard/.config/classic/03 - Titan Reforged.config"
exit /b %ERRORLEVEL%
