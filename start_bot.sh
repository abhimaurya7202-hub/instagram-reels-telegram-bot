#!/bin/bash

echo "========================================"
echo "Starting Instagram Reels Bot..."
echo "========================================"
echo ""

# Check if .env exists
if [ ! -f .env ]; then
    echo "ERROR: Configuration not found!"
    echo "Please run ./setup.sh first"
    exit 1
fi

# Load environment variable
export $(cat .env | xargs)

# Start the bot
echo "Bot is starting..."
echo "Press Ctrl+C to stop the bot"
echo ""
python3 bot.py
