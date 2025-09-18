@echo off

:: Load ffmpeg path from config
call %~dp0config.bat

:: Confirm config
echo Using ffmpeg path: %ffmpeg_path%

:: Set directory names
set "SRC_DIR=videos"
set "OUT_DIR=mp3"

:: Create output folder
if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

:: Extract audio
for %%F in ("%SRC_DIR%\*.*") do (
    "%ffmpeg_path%" -y -i "%%F" -vn -acodec libmp3lame -q:a 0 "%OUT_DIR%\%%~nF.mp3"
)

pause





