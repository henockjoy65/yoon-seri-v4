if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/henockjoy65/yoon-seri-v4.git /yoon-seri-v4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /yoon-seri-v4
fi
cd /yoon-seri-v4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
