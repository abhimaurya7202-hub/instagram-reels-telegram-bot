@echo off
echo ========================================
echo Starting Instagram Reels Bot...
echo ========================================
echo.

REM Check if .env exists
if not exist .env (
    echo ERROR: Configuration not found!
    echo Please run setup.bat first
    pause
    exit /b 1
)

REM Load environment variable
for /f "tokens=1,2 delims==" %%a in (.env) do set %%a=%%b

REM Start the bot
echo Bot is starting...
echo Press Ctrl+C to stop the bot
echo.
python bot.py

pause
