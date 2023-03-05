### Install PM2
PM2 is a process manager built on node that allows you to launch, stop, restart processes in this case it creates an ecosystem.config.js file in the home, my-backend,and my-frontend for Strapi and Gatsby to start both processes.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Configure_PM2/master/configure-pm2.sh &&
sudo bash fixscripts.sh &&
bash configure-pm2.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
pm2 start ecosystem.config.js
```


### To start any process in the ecosystem.config.js file.

```
pm2 start ecosystem.config.js
```
