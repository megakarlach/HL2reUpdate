@echo off
if "%VPROJECT%"=="" (
	if exist "%~d0%~p0set_sdk_env.bat" (
		call "%~d0%~p0set_sdk_env.bat"
	) else (
		echo WARNING: VPROJECT not set, and set_sdk_env.bat file not present.
		pause
	)
) else (
	echo VPROJECT=%VPROJECT%
)
