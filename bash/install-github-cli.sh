#!/bin/bash

# Install curl if not already installed
if ! type -p curl >/dev/null; then
  sudo apt install curl -y
fi

# Install the GitHub CLI archive keyring
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \

# Add the GitHub CLI repository to the apt sources list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \

# Update the apt package list and install the GitHub CLI
sudo apt update \
&& sudo apt install gh -y
