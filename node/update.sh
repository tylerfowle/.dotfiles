# Update npm & package
echo "npm verions"
npm -v
# Check for npm update
if test ! $(which npm)
then
  echo "==> Installing npm for you."
  sudo npm install npm -g
fi

sudo npm update -g
npm -v

# Update Ruby & gems
echo "updating ruby and gems"
sudo gem update --system
sudo gem update
