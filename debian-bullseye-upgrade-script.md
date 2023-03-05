### Upgrade Debian Buster to Bullseye with upgrade.sh

This markdown provides a quick and easy script to upgrade a Debian Buster operating system to Bullseye. The script has been verified as still working in 2022, although it may require the manual installation of wget.

### Quickscript:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Bullseye_Upgrade_Script/master/upgrade.sh &&
sudo bash fixscripts.sh &&
sudo bash upgrade.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
set -o emacs
```
