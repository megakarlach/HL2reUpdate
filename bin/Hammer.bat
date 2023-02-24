@echo off
:: Batch file to launch Hammer editor with proper environment

:: Confirm VPROJECT variable is set
call "%~d0%~p0check_sdk_env.bat"

:: Launch Hammer
echo Starting hammer...
echo Executing "%~d0%~p0hammer.exe" %*
start "" "%~d0%~p0hammer.exe" %*
