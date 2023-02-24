@echo off
:: Batch file to launch Half-Life model viewer with proper environment

:: Confirm VPROJECT variable is set
call "%~d0%~p0check_sdk_env.bat"

:: Launch HLMV
echo Starting HLMV...
echo Executing "%~d0%~p0hlmv.exe" %*
start "" "%~d0%~p0hlmv.exe" %*
