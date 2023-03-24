#!/bin/bash
### Disable Prompts.
DEBIAN_FRONTEND=noninteractive
### Update, upgrade & clean.
apt update -y &&
apt upgrade -y &&
apt autoremove -y
### Update sources.list
sed -i 's/stretch/buster/g' /etc/apt/sources.list
### Preseed restart without asking.
echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections
### Update, upgrade & clean.
apt update -y &&
apt upgrade -y &&
apt autoremove -y
### Full upgrade
apt full-upgrade
### Check Release
cat /etc/os-release
