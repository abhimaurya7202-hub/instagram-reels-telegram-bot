# 🎬 Instagram Reels Telegram Bot

A powerful Telegram bot that downloads Instagram reels instantly. Just send a username and get the latest 5 reels!

## ✨ Features

- 📥 Download latest 5 reels from any public Instagram account
- 🚀 Fast and efficient downloading
- 📊 Shows likes and comments count
- 💬 Includes captions
- 🤖 Easy to use - just send username
- ⚡ **FULLY AUTOMATED SETUP** - No manual configuration needed!

---

## 🚀 SUPER EASY SETUP (Just 3 Steps!)

### **Step 1: Install Python**

**Windows:**
1. Download Python from: https://www.python.org/downloads/
2. Run installer
3. ✅ **CHECK "Add Python to PATH"** (IMPORTANT!)
4. Click "Install Now"

**Mac:**
```bash
brew install python3
```

**Linux:**
```bash
sudo apt update
sudo apt install python3 python3-pip
```

---

### **Step 2: Download This Bot**

**Option A - Download ZIP (Easiest):**
1. Click green "Code" button above
2. Click "Download ZIP"
3. Extract the ZIP file
4. Open the extracted folder

**Option B - Using Git:**
```bash
git clone https://github.com/abhimaurya7202-hub/instagram-reels-telegram-bot.git
cd instagram-reels-telegram-bot
```

---

### **Step 3: Run Setup Script**

**Windows:**
1. Double-click `setup.bat`
2. Follow the instructions
3. When asked for token, get it from @BotFather (see below)
4. Paste token and press Enter
5. Done! Now double-click `start_bot.bat` to run

**Mac/Linux:**
```bash
chmod +x setup.sh
./setup.sh
```
Follow instructions, then run:
```bash
./start_bot.sh
```

---

## 🤖 How to Get Telegram Bot Token

1. Open Telegram
2. Search for **@BotFather**
3. Send `/newbot`
4. Choose a name for your bot (e.g., "My Reels Bot")
5. Choose a username (must end with 'bot', e.g., "myreels_bot")
6. **Copy the token** BotFather gives you
7. Paste it when setup script asks

**Example token:** `1234567890:ABCdefGHIjklMNOpqrsTUVwxyz`

---

## 📱 Using Your Bot

1. After running `start_bot.bat` (Windows) or `./start_bot.sh` (Mac/Linux)
2. Open Telegram and find your bot
3. Send `/start` to begin
4. Send any Instagram username (without @)
5. Wait for reels to download!

**Example:**
```
cristiano
```

Bot will send you 5 latest reels with captions and stats!

---

## 🎯 What Each File Does

- `setup.bat` / `setup.sh` - Automated setup (run once)
- `start_bot.bat` / `start_bot.sh` - Start the bot
- `bot.py` - Main bot code
- `requirements.txt` - Required packages
- `.env` - Your bot token (created by setup)

---

## ❓ Troubleshooting

**"Python not found"**
- Reinstall Python and check "Add to PATH"
- Restart your computer

**"pip not found"**
```bash
python -m ensurepip --upgrade
```

**"Bot token invalid"**
- Get a new token from @BotFather
- Run setup script again

**"No reels found"**
- Account might be private
- Account might not have reels
- Try another username

**Bot stops responding:**
- Close and restart using `start_bot.bat` or `./start_bot.sh`

---

## 🌐 Deploy Online (24/7 Running)

Want your bot to run 24/7 without your computer?

### **Heroku (Free):**
1. Create account at heroku.com
2. Install Heroku CLI
3. Run:
```bash
heroku login
heroku create your-bot-name
heroku config:set TELEGRAM_BOT_TOKEN=your_token
git push heroku main
```

### **Railway (Easiest):**
1. Go to railway.app
2. Connect your GitHub
3. Select this repository
4. Add environment variable: `TELEGRAM_BOT_TOKEN`
5. Deploy!

---

## ⚠️ Important Notes

- Only works with **public** Instagram accounts
- Instagram may rate limit requests
- Respect Instagram's Terms of Service
- Use responsibly
- Bot downloads 5 reels at a time (can be changed in bot.py)

---

## 🛠️ Tech Stack

- **Python 3.8+**
- **pyTelegramBotAPI** - Telegram Bot API
- **Instaloader** - Instagram scraping
- **Requests** - HTTP library

---

## 📝 License

MIT License - Free to use and modify!

---

## 🤝 Contributing

Pull requests welcome! Open an issue for major changes.

---

## 📧 Support

Issues? Open a GitHub issue or contact [@abhimaurya7202](https://github.com/abhimaurya7202-hub)

---

**Made with ❤️ by Abhishek Mourya**

**⭐ Star this repo if you find it useful!**
