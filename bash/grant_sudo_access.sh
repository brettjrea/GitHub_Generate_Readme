#!/bin/bash

# This script grants sudo access to a specified user without requiring a password.
# The username to be granted sudo access is defined by the USERNAME variable.
# To run this script, first save it as a file (e.g. grant_sudo_access.sh).
# Then, open a terminal and navigate to the directory where the script is saved.
# Next, make the script executable by running the command "chmod +x grant_sudo_access.sh".
# Finally, run the script with root privileges by running the command "sudo ./grant_sudo_access.sh".
# Note that granting unrestricted sudo access to a user can pose a significant security risk.
# It is generally recommended to limit the user's privileges to only the specific commands or tasks they need to perform,
# and require a password for any elevated privileges.

# Set your desired WSL username
WSL_USERNAME="your_username_here"

# Create the wsl.conf file with the desired configuration
cat <<EOT | sudo tee /etc/wsl.conf >/dev/null
[automount]
root = /mnt/
options = "metadata,umask=22,fmask=11,case=off"

[network]
generateHosts = true
generateResolvConf = true

[user]
default = $WSL_USERNAME

[interop]
enabled = true
appendWindowsPath = true
EOT

# Display a message indicating that the file was created
echo "wsl.conf file created in /etc/ directory."

# Inform the user to manually restart the WSL distribution
echo "Please close all WSL terminals and run 'wsl --shutdown' in a Windows Command Prompt or PowerShell, then restart your WSL distribution to apply the new settings."

# Check if the script is being run with root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo or as root."
    exit
fi

# Define the sudoers file to be created
SUDOERS_FILE="/etc/sudoers.d/$WSL_USERNAME"

# Define the sudoers file contents
SUDOERS_CONTENT="$WSL_USERNAME ALL=(ALL) NOPASSWD: ALL"

# Create the sudoers file and add the contents
echo "$SUDOERS_CONTENT" | sudo tee "$SUDOERS_FILE" >/dev/null

# Verify that the file was created successfully
if [ -f "$SUDOERS_FILE" ]; then
    echo "Sudoers file created successfully for $WSL_USERNAME."
else
    echo "Error creating sudoers file for $WSL_USERNAME."
fi
