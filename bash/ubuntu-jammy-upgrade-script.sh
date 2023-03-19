#!/bin/bash
### Disable Prompts.
export DEBIAN_FRONTEND=noninteractive
###Update & Upgrade.
apt update -y && apt dist-upgrade -y
###Configure available releases to LTS.
sed -i 's/Prompt=lts/Prompt=normal/g' /etc/update-manager/release-upgrades
###Change from Focal to Jammy.
sed -i 's/focal/jammy/g' /etc/apt/sources.list
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt clean -y
