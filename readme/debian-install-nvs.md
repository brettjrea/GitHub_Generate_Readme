### Install NVS and NPM LTS on Debian/Ubuntu with Curl and Bash script.

#### This new one fetches a script from this repo which is useful for using inside of another script.

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


#### This is the same script as a copy-paste oneliner.

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
