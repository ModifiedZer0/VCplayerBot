echo "Cloning Repo...."
if [[ $BRANCH != "None" ]]
then
  echo "Cloning beta branch...."
  git clone https://github.com/ModifiedZer0/VCPlayerBot -b $BRANCH /VCPlayerBot
else
  echo "Cloning main branch...."
  git clone https://github.com/ModifiedZer0/VCPlayerBot /VCPlayerBot
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
