if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HackerJr-TG/Nancy-Bot.git /Nancy-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Nancy-Bot
fi
cd /KuttuBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
