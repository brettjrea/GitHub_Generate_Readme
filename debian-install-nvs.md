---

Install NVS and NPM LTS on Debian/Ubuntu with Curl and Bash script.

---

### This new one fetches a script from this repo which is useful for using inside of another script.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Install_NVS/main/install-nvs.sh &&
chmod +x install-nvs.sh &&
./install-nvs.sh &&
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
curl -o- https://raw.githubusercontent.com/jasongin/nvs/master/install.sh | bash && 
export NVS_HOME="$HOME/.nvs" && 
[ -s "$NVS_HOME/nvs.sh" ] && 
. "$NVS_HOME/nvs.sh" && 
nvs add lts && 
nvs use lts && 
echo "export NVS_HOME="$HOME/.nvs"" >> ~/.bashrc && 
echo "[ -s "$NVS_HOME/nvs.sh" ] && 
. "$NVS_HOME/nvs.sh"" >> ~/.bashrc && 
echo "nvs use lts" >> ~/.bashrc && 
exec bash
```

---
<details>
<summary>Update and Upgrade System</summary>

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
sudo apt install curl git -y
```

This command installs Curl, which is used to transfer data from and to servers.

---

### Install NVS with Curl

```
curl -o- https://raw.githubusercontent.com/jasongin/nvs/master/install.sh | bash 
```

This command uses Curl to download the NVM installation script and then pipes it to Bash to execute.

---

### Set Up Environment Variables

```
export NVS_HOME="$HOME/.nvs" && 
[ -s "$NVS_HOME/nvs.sh" ] && 
. "$NVS_HOME/nvs.sh" && 
```

These commands set up environment variables for NVS, which tells the shell where to find NVS and how to load it.

### Install LTS version of Node.js

```
nvs add lts && 
nvs use lts && 
```

This command installs the latest LTS (Long-Term Support) version of Node.js using NVS.

---

### Configure Bashrc

```
echo "export NVS_HOME="$HOME/.nvs"" >> ~/.bashrc && 
echo "[ -s "$NVS_HOME/nvs.sh" ] && 
. "$NVS_HOME/nvs.sh"" >> ~/.bashrc && 
echo "nvs use lts" >> ~/.bashrc 
```

These commands add the necessary configurations to the bashrc file, which sets up the environment variables and loads NVS when a new terminal session is started.

---

### Restart Bashrc

```
exec bash
```

This command restarts the bashrc to apply the changes made in the previous commands.

---

*You should now [Install common build tools.](https://github.com/brettjrea/Debian_Install_Common_Build_Tools)*
<details>
