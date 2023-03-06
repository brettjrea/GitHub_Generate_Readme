### Debian Strapi Backend API

### This new one fetches a script from this repo which is useful for using inside of another script.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Strapi_Backend_API/main/install-strapi.sh &&
chmod +x install-strapi.sh &&
./install-strapi.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
```

```
cd ~/my-backend && yarn deploy
```
I seperated the command to start development because I am using PM2 from the link above. ☝️ 

#### This is a copy-paste oneliner for those who dont want to use a script. 

```
sudo apt update -y && sudo apt upgrade -y && 
sudo apt autoremove -y &&
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y && 
npm install -g yarn && 
yarn global add pm2 &&
yarn create strapi-app my-backend --quickstart --no-run && 
cd my-backend && echo "18.14.2" > .nvmrc && 
cd ~/my-backend && yarn develop
```
