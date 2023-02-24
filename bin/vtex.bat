@echo off
:: Batch file to launch vtex with proper environment

:: Confirm VPROJECT variable is set
call "%~d0%~p0check_sdk_env.bat"

echo Executing: "%~d0%~p0vtex.exe" -game "%VPROJECT%" %*
"%~d0%~p0vtex.exe" -game "%VPROJECT%" %*
