### powershell README source Folder

Welcome to the “README” folder for this PowerShell repository!

Overview
The README files in this folder contain important information on how to use and interact with the PowerShell scripts in the repository. These scripts are designed to help you automate common tasks in your Windows environment.

Repository and Gist Mappings
To map a PowerShell script to a repository or Gist, you can use the REPOSITORY_MAPPING and GIST_MAPPING environment variables, respectively.

Here’s an example of how to set these variables in your repository:

```
env:
  REPOSITORY_MAPPING: >-
    {
      "powershell/windows-install-wsl.ps1": "brettjrea/Windows_WSL_Debian",
      "powershell/install-vsc-remote-pack.ps1": "brettjrea/Windows_VSC_Remote_Pack"
    }
  GIST_MAPPING: >-
    {
      "powershell/windows-install-wsl.ps1": "5da7ad9addfd0170a835872dc39bf376",
      "powershell/install-vsc-remote-pack.ps1": "a2e9f34da97b14950adca398540471e9"
    }
  ```
    
To add a new script to the mappings, simply add a new key-value pair to the REPOSITORY_MAPPING or GIST_MAPPING object, where the key is the path to the script, and the value is the name of the repository or Gist ID where the script should be mapped.

By mapping your scripts to repositories or Gists, you can easily manage and share your PowerShell code with others.

Thank you for using this repository!
