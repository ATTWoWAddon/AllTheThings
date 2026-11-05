@echo off
python "%~dp0../../../../../titan/update-snapshot.py" %*
exit /b %ERRORLEVEL%
