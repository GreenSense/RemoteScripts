echo "Preparing GreenSense remote scripts"
echo "Installing required software via pkg..."

sudo apt-get update && sudo apt-get -y install sshpass nodejs curl
npm install -g web-code
