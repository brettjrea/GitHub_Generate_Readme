#### Install PM2
---

PM2 is a process manager built on Node.js that makes it easy to launch, stop, and restart processes on your server. In this case, we will use it to create an ecosystem.config.js file in the home, my-backend, and my-frontend directories for Strapi and Gatsby, which allows you to start both processes with a single command.

To install PM2 and configure the ecosystem file, run the following commands:

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
```

Once PM2 is installed and the ecosystem file is configured, you can start any process in the ecosystem.config.js file by running the following command:

```
pm2 start ecosystem.config.js
```

This will start all processes defined in the ecosystem.config.js file. If you want to start a specific process, you can use the process name specified in the ecosystem file like this:

```
pm2 start ecosystem.config.js --name <process name>
```





