#!/bin/bash

# Download the GitKraken package
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

# Install the package
sudo apt install ./gitkraken-amd64.deb

# If the installation did not complete due to missing packages, fix the dependencies
sudo apt --fix-broken install

# Launch GitKraken
gitkraken
