### Common Build Tools

This is a script to install common build tools on Debian-based systems using the install-tools.sh script. To use the script, copy and paste the following commands into your terminal:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Install_Common_Build_Tools/main/install-tools.sh &&
chmod +x install-tools.sh &&
./install-tools.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
```
