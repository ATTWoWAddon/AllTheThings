@echo off
where py >nul 2>nul
if not errorlevel 1 goto use_py

where python >nul 2>nul
if not errorlevel 1 goto use_python

where python3 >nul 2>nul
if not errorlevel 1 goto use_python3

echo db sync: Python 3.8 or newer is required. 1>&2
exit /b 1

:use_py
py -3 "%~dp0sync_db.py" %*
exit /b %errorlevel%

:use_python
python "%~dp0sync_db.py" %*
exit /b %errorlevel%

:use_python3
python3 "%~dp0sync_db.py" %*
exit /b %errorlevel%
