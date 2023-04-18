#!/bin/bash

# update and upgrade packages
sudo apt update -y && sudo apt upgrade -y

# remove unused packages
sudo apt autoremove -y

sudo apt install git curl procps -y
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install

echo 'export NVS_HOME="$HOME/.nvs"' >> ~/.bashrc
echo '[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"  # This loads NVS' >> ~/.bashrc
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

# install latest version of Node.js might need to use `source nvs.sh`
nvs add lts
nvs use lts

# Add NVS and Node to the PATH environment variable
echo 'export NVS_HOME="$HOME/.nvs"' >> ~/.bashrc
echo '[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"  # This loads NVS' >> ~/.bashrc
echo 'export PATH="$NVS_HOME/$(nvs which latest)":$PATH' >> ~/.bashrc

# Reload the shell to apply the PATH changes
exec bash
