# Set the WSL distribution name
$wslDistroName = "Ubuntu"

# Create the 'GitHub' directory in the Windows home folder
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\GitHub"

# Create the 'GitHub' directory in the Linux home folder (WSL)
wsl.exe --distribution $wslDistroName --exec sh -c "mkdir -p ~/GitHub"

# Define the URL of the PowerShell script
$url = "https://raw.githubusercontent.com/brettjrea/GitHub_Generate_Readme/main/powershell/configure_wsl.ps1"

# Define the local file path where you want to save the script
$localFilePath = "$HOME\GitHub\configure_wsl.ps1"

# Download the file from the specified URL and save it to the local file path
Invoke-WebRequest -Uri $url -OutFile $localFilePath

# Set the execution policy to bypass for the current PowerShell session
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# Navigate to the 'GitHub' directory
cd ~/GitHub

# Run the downloaded script to configure WSL
.\configure_wsl.ps1
