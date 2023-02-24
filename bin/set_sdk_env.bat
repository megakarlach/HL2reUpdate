@echo off
echo Configuring Source SDK environment variables for Half-Life 2

:: Set local environment variable that will only persist in processes
:: created by the current command processor shell
SET VPROJECT=%~d0%~p0..\hl2

:: Commentthis out if you ant to set it permanently as a system variable,
:: too
:: echo Attempding to set VPROJECT in system environment
:: SETX VPROJECT %VPROJECT%
:: echo.
echo VPROJECT=%VPROJECT%
