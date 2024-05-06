
echo "Cloning main Repository"
git clone https://github.com/SahilFaiz/Premium-Bots /DQ-The-File-Donor

cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
