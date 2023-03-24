sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/GitHub_Generate_Readme/main/bash/install-gitkraken.sh &&
sudo bash fixscripts.sh &&
sudo bash install-gitkraken.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
