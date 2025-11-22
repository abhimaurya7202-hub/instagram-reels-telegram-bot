#!/bin/bash

echo "========================================"
echo "Instagram Reels Telegram Bot - Setup"
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python is not installed!"
    echo "Please install Python from https://www.python.org/downloads/"
    exit 1
fi

echo "[1/5] Python detected successfully!"
echo ""

# Install dependencies
echo "[2/5] Installing required packages..."
pip3 install pyTelegramBotAPI==4.14.0 instaloader==4.10.3 requests==2.31.0
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install packages!"
    exit 1
fi
echo ""

# Get Telegram Bot Token
echo "[3/5] Setting up Telegram Bot Token"
echo ""
echo "IMPORTANT: You need a Telegram Bot Token"
echo ""
echo "How to get it:"
echo "1. Open Telegram and search for @BotFather"
echo "2. Send /newbot command"
echo "3. Follow instructions to create your bot"
echo "4. Copy the token BotFather gives you"
echo ""
read -p "Paste your Telegram Bot Token here: " BOT_TOKEN

if [ -z "$BOT_TOKEN" ]; then
    echo "ERROR: Bot token cannot be empty!"
    exit 1
fi

# Save token to .env file
echo "[4/5] Saving configuration..."
echo "TELEGRAM_BOT_TOKEN=$BOT_TOKEN" > .env
echo ""

# Make start script executable
echo "[5/5] Finalizing setup..."
chmod +x start_bot.sh
echo ""

echo "========================================"
echo "Setup Complete!"
echo "========================================"
echo ""
echo "Your bot is ready to run!"
echo ""
echo "To start the bot, run: ./start_bot.sh"
echo ""
