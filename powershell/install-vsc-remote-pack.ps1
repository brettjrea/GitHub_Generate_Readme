# Install VS Code
$vscodeInstaller = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$vscodeInstallerPath = "$env:TEMP\vscode_installer.exe"
Invoke-WebRequest -Uri $vscodeInstaller -OutFile $vscodeInstallerPath
Start-Process -FilePath $vscodeInstallerPath -ArgumentList "/VERYSILENT /NORESTART /SUPPRESSMSGBOXES" -Wait

# Install Remote Development (extension pack)
$remoteDevelopmentExtensionPack = "ms-vscode-remote.vscode-remote-extensionpack"
code --install-extension $remoteDevelopmentExtensionPack
