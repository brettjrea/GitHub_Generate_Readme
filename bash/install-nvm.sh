#!/bin/bash

# update and upgrade packages
sudo apt update -y && sudo apt upgrade -y

# remove unused packages
sudo apt autoremove -y

# install curl
sudo apt install curl -y

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# set environment variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# install latest LTS version of Node.js
nvm install --lts

# Add nvm and node to the PATH environment variable
echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.bashrc
echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"" >> ~/.bashrc
echo "[ -s \"\$NVM_DIR/bash_completion\" ] && \\. \"\$NVM_DIR/bash_completion\"" >> ~/.bashrc
echo "export PATH=\"\$NVM_DIR/versions/node/\$(nvm version)/bin:\$PATH\"" >> ~/.bashrc

# Reload the shell to apply the PATH changes

exec bash
