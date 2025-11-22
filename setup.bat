@echo off
echo ========================================
echo Instagram Reels Telegram Bot - Setup
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed!
    echo Please install Python from https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [1/5] Python detected successfully!
echo.

REM Install dependencies
echo [2/5] Installing required packages...
pip install pyTelegramBotAPI==4.14.0 instaloader==4.10.3 requests==2.31.0
if errorlevel 1 (
    echo ERROR: Failed to install packages!
    pause
    exit /b 1
)
echo.

REM Get Telegram Bot Token
echo [3/5] Setting up Telegram Bot Token
echo.
echo IMPORTANT: You need a Telegram Bot Token
echo.
echo How to get it:
echo 1. Open Telegram and search for @BotFather
echo 2. Send /newbot command
echo 3. Follow instructions to create your bot
echo 4. Copy the token BotFather gives you
echo.
set /p BOT_TOKEN="Paste your Telegram Bot Token here: "

if "%BOT_TOKEN%"=="" (
    echo ERROR: Bot token cannot be empty!
    pause
    exit /b 1
)

REM Save token to .env file
echo [4/5] Saving configuration...
echo TELEGRAM_BOT_TOKEN=%BOT_TOKEN% > .env
echo.

REM Update bot.py to use .env
echo [5/5] Finalizing setup...
echo.

echo ========================================
echo Setup Complete! 
echo ========================================
echo.
echo Your bot is ready to run!
echo.
echo To start the bot, run: start_bot.bat
echo.
pause
