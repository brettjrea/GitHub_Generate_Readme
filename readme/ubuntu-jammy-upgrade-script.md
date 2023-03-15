### Upgrade Ubuntu Focal to Jammy with upgrade.sh

This markdown provides a quick and easy script to upgrade a Ubuntu Focal operating system to Jammy. The script has been verified as still working in 2022, although it may require the manual installation of wget.

To upgrade Ubuntu Focal to Jammy with upgrade.sh run the following commands:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Ubuntu_Jammy_Upgrade_Script/master/upgrade.sh &&
sudo bash fixscripts.sh &&
sudo bash upgrade.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
set -o emacs
```
