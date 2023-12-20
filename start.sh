if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/vishnuu123pl/THALAPATHY-FILTER-BOTv.git /THALAPATHY-FILTER-BOTv 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THALAPATHY-FILTER-BOTv 
fi
cd /THALAPATHY-FILTER-BOTv 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
