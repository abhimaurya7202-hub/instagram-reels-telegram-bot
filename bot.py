import os
import requests
import telebot
from instaloader import Instaloader, Profile
import time

# Configuration
TELEGRAM_BOT_TOKEN = os.getenv('TELEGRAM_BOT_TOKEN')
bot = telebot.TeleBot(TELEGRAM_BOT_TOKEN)

# Initialize Instaloader
L = Instaloader()

def download_reels(username, chat_id):
    """Download latest 5 reels from Instagram profile"""
    try:
        bot.send_message(chat_id, f"🔍 Fetching reels from @{username}...")
        
        # Load profile
        profile = Profile.from_username(L.context, username)
        
        # Get reels
        reels = []
        count = 0
        
        for post in profile.get_posts():
            if post.is_video and post.typename == 'GraphVideo':
                if count >= 5:
                    break
                reels.append(post)
                count += 1
        
        if not reels:
            bot.send_message(chat_id, "❌ No reels found for this user!")
            return
        
        bot.send_message(chat_id, f"✅ Found {len(reels)} reels! Downloading...")
        
        # Download and send each reel
        for idx, reel in enumerate(reels, 1):
            try:
                # Download reel
                video_url = reel.video_url
                caption = reel.caption[:1000] if reel.caption else "No caption"
                
                bot.send_message(chat_id, f"📥 Downloading reel {idx}/{len(reels)}...")
                
                # Download video
                response = requests.get(video_url, stream=True)
                filename = f"reel_{idx}.mp4"
                
                with open(filename, 'wb') as f:
                    for chunk in response.iter_content(chunk_size=8192):
                        f.write(chunk)
                
                # Send to Telegram
                with open(filename, 'rb') as video:
                    bot.send_video(
                        chat_id, 
                        video, 
                        caption=f"Reel {idx}/{len(reels)}\n\n{caption}\n\n❤️ {reel.likes} | 💬 {reel.comments}"
                    )
                
                # Clean up
                os.remove(filename)
                time.sleep(2)  # Rate limiting
                
            except Exception as e:
                bot.send_message(chat_id, f"⚠️ Error downloading reel {idx}: {str(e)}")
        
        bot.send_message(chat_id, "✅ All reels sent successfully!")
        
    except Exception as e:
        bot.send_message(chat_id, f"❌ Error: {str(e)}")

@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    welcome_text = """
🎬 **Instagram Reels Downloader Bot**

Send me an Instagram username and I'll download their latest 5 reels!

**Usage:**
Just send: `username` (without @)

Example: `cristiano`

**Commands:**
/start - Show this message
/help - Show this message
    """
    bot.reply_to(message, welcome_text, parse_mode='Markdown')

@bot.message_handler(func=lambda message: True)
def handle_username(message):
    username = message.text.strip().replace('@', '')
    
    if not username:
        bot.reply_to(message, "❌ Please send a valid Instagram username!")
        return
    
    # Start downloading in background
    download_reels(username, message.chat.id)

if __name__ == '__main__':
    print("🤖 Bot is running...")
    bot.infinity_polling()
