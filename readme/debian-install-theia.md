```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Theia_IDE/master/install-theia.sh &&
sudo bash fixscripts.sh &&
sudo bash install-theia.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
set -o emacs
```

# Debian_Theia_IDE
```
sudo apt-get install libsecret-1-dev
```

```
mkdir ~/.theia
cd ~/.theia
```

```
wget https://raw.githubusercontent.com/brettjrea/Debian_Theia_IDE/master/settings.json
```

```
mkdir ~/theia
cd ~/theia/
```

```
export PUPPETEER_SKIP_DOWNLOAD=true
```

```
yarn theia start --plugins=local-dir:/home/userland/plugins --skip-build --ignore-errors
```

```
wget https://raw.githubusercontent.com/brettjrea/Debian_Theia_IDE/master/package.json
```

```
yarn
```

```
yarn theia build
```

```
yarn start /my-workspace --hostname 0.0.0.0 --port 8080
```

