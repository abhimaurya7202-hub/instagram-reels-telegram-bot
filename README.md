# 🎬 Instagram Reels Telegram Bot

A powerful Telegram bot that downloads Instagram reels instantly. Just send a username and get the latest 5 reels!

## ✨ Features

- 📥 Download latest 5 reels from any public Instagram account
- 🚀 Fast and efficient downloading
- 📊 Shows likes and comments count
- 💬 Includes captions
- 🤖 Easy to use - just send username

## 🚀 Quick Start

### Prerequisites

- Python 3.8+
- Telegram Bot Token (from [@BotFather](https://t.me/botfather))

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/abhimaurya7202-hub/instagram-reels-telegram-bot.git
cd instagram-reels-telegram-bot
```

2. **Install dependencies**
```bash
pip install -r requirements.txt
```

3. **Set up environment variable**
```bash
export TELEGRAM_BOT_TOKEN="your_bot_token_here"
```

Or create a `.env` file:
```
TELEGRAM_BOT_TOKEN=your_bot_token_here
```

4. **Run the bot**
```bash
python bot.py
```

## 📱 Usage

1. Start the bot on Telegram
2. Send `/start` to see instructions
3. Send any Instagram username (without @)
4. Wait for the bot to download and send reels!

**Example:**
```
cristiano
```

## 🔧 Configuration

Edit `bot.py` to customize:
- Number of reels to download (default: 5)
- Rate limiting delays
- Caption length

## 📦 Deployment

### Deploy on Heroku

1. Create a new Heroku app
2. Add buildpack: `heroku/python`
3. Set config var: `TELEGRAM_BOT_TOKEN`
4. Deploy from GitHub

### Deploy on Railway

1. Connect your GitHub repo
2. Add environment variable: `TELEGRAM_BOT_TOKEN`
3. Deploy automatically

### Deploy on VPS

```bash
# Install dependencies
pip install -r requirements.txt

# Run with nohup
nohup python bot.py &

# Or use systemd service
sudo systemctl start instagram-bot
```

## ⚠️ Important Notes

- Only works with **public** Instagram accounts
- Instagram may rate limit requests
- Respect Instagram's Terms of Service
- Use responsibly

## 🛠️ Tech Stack

- **Python 3.8+**
- **pyTelegramBotAPI** - Telegram Bot API wrapper
- **Instaloader** - Instagram scraping library
- **Requests** - HTTP library

## 📝 License

MIT License - feel free to use and modify!

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first.

## 📧 Support

For issues or questions, open a GitHub issue or contact [@abhimaurya7202](https://github.com/abhimaurya7202-hub)

---

**Made with ❤️ by Abhishek Mourya**
