# Set the NVS home directory
$env:NVS_HOME = "$env:LOCALAPPDATA\nvs"

# Clone the NVS repository
git clone https://github.com/jasongin/nvs "$env:NVS_HOME"

# Set the execution policy to allow running scripts
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force

# Import the NVS module and install
. "$env:NVS_HOME\nvs.ps1" install

# Add LTS version of Node.js
nvs add lts

# Use LTS version of Node.js
nvs use lts
