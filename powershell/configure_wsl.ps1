# Set your desired WSL username
$wslUsername = "penguin"

# Define the WSL distribution name
$wslDistroName = "Ubuntu"

# Create the wsl.conf content
$wslConfContent = @"
[automount]
root = /mnt/
options = "metadata,umask=22,fmask=11,case=off"

[network]
generateHosts = true
generateResolvConf = true

[user]
default = $wslUsername

[interop]
enabled = true
appendWindowsPath = true
"@

# Create the wsl.conf file in the WSL distribution
wsl.exe --distribution $wslDistroName --exec bash -c "echo '$wslConfContent' | sudo tee /etc/wsl.conf >/dev/null"

# Grant sudo access to the specified user without requiring a password
$sudoersContent = "$wslUsername ALL=(ALL) NOPASSWD: ALL"
wsl.exe --distribution $wslDistroName --exec bash -c "echo '$sudoersContent' | sudo tee /etc/sudoers.d/$wslUsername >/dev/null"

# Output the results
Write-Host "wsl.conf file created and sudo access granted for $wslUsername in $wslDistroName distribution."
