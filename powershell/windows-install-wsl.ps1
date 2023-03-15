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

# Step 3: Download Debian
Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile debian.appx -UseBasicParsing
Write-Host "Debian is downloaded."

# Step 4: Add Debian package
Add-AppxPackage .\debian.appx
Write-Host "Debian package is added."

# Step 5: Start Debian
debian
