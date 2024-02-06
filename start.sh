if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/NAMAROy/SKMTHEBOT /SKMTHEBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SKMTHEBOT
fi
cd /SKMTHEBOT
pip3 install -U -r requirements.txt
echo "Starting SMKTHEBOT...."
python3 bot.py
