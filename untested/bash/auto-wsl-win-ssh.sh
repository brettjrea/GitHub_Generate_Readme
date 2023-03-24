#!/bin/bash

# Check for and install required packages
if ! dpkg -s ssh > /dev/null 2>&1; then
  sudo apt-get update
  sudo apt-get install -y ssh
fi

# Prompt for email address
read -p "Enter your email address: " email

# Generate SSH key in Debian on WSL
wslusername_path="/home/$USER"
cd $wslusername_path
mkdir -p .ssh
cd .ssh
ssh-keygen -t rsa -b 4096 -C "$email"

# Copy SSH key to Windows 10
winusername_path=$(wslpath $(cmd.exe /c "echo %USERPROFILE%"))
winusername=$(basename $winusername_path)
cd $winusername_path
mkdir -p .ssh
cd .ssh
cp $wslusername_path/.ssh/id_rsa* .

echo "SSH keys generated and copied successfully."
