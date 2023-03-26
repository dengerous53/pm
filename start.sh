if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HS-BOTZ/pm.git /moviefinderextra
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /moviefinderextra
fi
cd /moviefinderextra
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
