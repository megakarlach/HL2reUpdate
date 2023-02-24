@echo off
:: Batch file to launch Faceposer with proper environment

:: Confirm VPROJECT variable is set
call "%~d0%~p0check_sdk_env.bat"

:: Launch Faceposer
echo Starting Faceposer...
echo Executing "%~d0%~p0hlfaceposer.exe" %*
start "" "%~d0%~p0hlfaceposer.exe" %*
