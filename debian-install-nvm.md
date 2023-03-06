---

Install NVM and NPM LTS on Debian/Ubuntu with Curl and Bash script.

---
*Updated to v0.39.3 02/2023*

### This new one fetches a script from this repo which is useful for using inside of another script.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Install_NVM/main/install-nvm.sh &&
chmod +x install-nvm.sh &&
./install-nvm.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
```
---

### This is the same script as a copy-paste oneliner.

```
sudo apt update -y &&
sudo apt upgrade -y && 
sudo apt autoremove -y && 
sudo apt-get install --reinstall ca-certificates -y && 
sudo apt install curl -y && 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash && 
export NVM_DIR="$HOME/.nvm" && 
[ -s "$NVM_DIR/nvm.sh" ] && 
. "$NVM_DIR/nvm.sh" && 
[ -s "$NVM_DIR/bash_completion" ] && 
. "$NVM_DIR/bash_completion" && 
nvm install --lts && 
echo "export NVM_DIR="$HOME/.nvm"" >> ~/.bashrc && 
echo "[ -s "$NVM_DIR/nvm.sh" ] && 
\. "$NVM_DIR/nvm.sh"" >> ~/.bashrc && 
echo "[ -s "$NVM_DIR/bash_completion" ] && 
\. "$NVM_DIR/bash_completion"" >> ~/.bashrc && 
echo "export PATH="$NVM_DIR/versions/node/$(nvm version)/bin:$PATH"" >> ~/.bashrc && 
exec bash
```

<details>
---
<summary>Command Breakdown</summary>
### Update and Upgrade System


```
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
```

This command updates the package list and upgrades any existing packages on the system. It also removes any packages that are no longer needed.

---

### Install ca-certificates

```
sudo apt-get install --reinstall ca-certificates -y
```
This command reinstalls ca-certificates, which are used to authenticate SSL/TLS connections.

---

### Install Curl

```
sudo apt install curl -y
```

This command installs Curl, which is used to transfer data from and to servers.

---

### Install NVM with Curl

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

This command uses Curl to download the NVM installation script and then pipes it to Bash to execute.

---

### Set Up Environment Variables

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
```

These commands set up environment variables for NVM, which tells the shell where to find NVM and how to load it.

### Install LTS version of Node.js

```
nvm install --lts
```

This command installs the latest LTS (Long-Term Support) version of Node.js using NVM.

---

### Configure Bashrc

```
echo "export NVM_DIR="$HOME/.nvm"" >> ~/.bashrc
echo "[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"" >> ~/.bashrc
echo "[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"" >> ~/.bashrc
echo "export PATH="$NVM_DIR/versions/node/$(nvm version)/bin:$PATH"" >> ~/.bashrc
```

These commands add the necessary configurations to the bashrc file, which sets up the environment variables and loads NVM when a new terminal session is started.

---

### Restart Bashrc

```
exec bash
```

This command restarts the bashrc to apply the changes made in the previous commands.

---

*You should now [Install common build tools.](https://github.com/brettjrea/Debian_Install_Common_Build_Tools)*
<details>
