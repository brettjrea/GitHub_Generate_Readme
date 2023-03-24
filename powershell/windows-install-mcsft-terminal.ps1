# PowerShell script to download, install and open Microsoft Terminal

# 1. Open Windows Powershell as Administrator
function Open-PowerShellAsAdmin {
    Start-Process -FilePath "powershell.exe" -Verb RunAs
}

# 2. Download Microsoft Terminal package from GitHub
function Download-MicrosoftTerminal {
    $url = "https://github.com/microsoft/terminal/releases/download/v1.12.10732.0/Microsoft.WindowsTerminal_Win10_1.12.10732.0_8wekyb3d8bbwe.msixbundle"
    $output = "terminal.msixbundle"
    Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing
}

# 3. Add Microsoft Terminal package
function Install-MicrosoftTerminal {
    $packagePath = ".\terminal.msixbundle"
    Add-AppxPackage -Path $packagePath
}

# 4. Open Microsoft Terminal
function Open-MicrosoftTerminal {
    Start-Process -FilePath "wt.exe"
}

# Main script
Open-PowerShellAsAdmin
Download-MicrosoftTerminal
Install-MicrosoftTerminal
Open-MicrosoftTerminal
