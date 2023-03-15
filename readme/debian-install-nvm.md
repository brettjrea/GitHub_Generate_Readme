### Install NVM and NPM LTS on Debian/Ubuntu with Curl and Bash script.

*Updated to v0.39.3 02/2023*

#### This new one fetches a script from this repo which is useful for using inside of another script.

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

#### This is the same script as a copy-paste oneliner.

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
