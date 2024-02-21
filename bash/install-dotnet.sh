sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh &&
chmod +x dotnet-install.sh &&
./dotnet-install.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
