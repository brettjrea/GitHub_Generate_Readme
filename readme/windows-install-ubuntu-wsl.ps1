# Step 1: Open Windows Powershell from powerusers menu
Start-Process powershell -Verb runAs

# Step 2: Enable Windows Optional Feature Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Write-Host "Windows Optional Feature Microsoft-Windows-Subsystem-Linux is enabled."

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
wsl --set-default-version 2
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi -UseBasicParsing
.\wsl_update_x64.msi

# Step 3: Download Ubuntu
Invoke-WebRequest -Uri https://aka.ms/wslubuntu -OutFile Ubuntu.appx -UseBasicParsing
Write-Host "Ubuntu is downloaded."

# Step 4: Add Ubuntu package
Add-AppxPackage .\Ubuntu.appx
Write-Host "Ubuntu package is added."

# Step 5: Update WSL
wsl --update

# Step 6: Start Debian
ubuntu
