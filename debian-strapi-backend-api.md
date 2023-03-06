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
I seperated the command to start development because I am using PM2 from the link below. 👇 

---
*You might now want to [Configure PM2](https://github.com/brettjrea/Debian_Configure_PM2) a node based Process mananger to launch the strapi backend and Gatsby frontend with one command from the terminal to run at the same time in the background so you can still use your terminal.*

*You might now want to [install a Gatsby.js w/ Styled-Components.](https://github.com/brettjrea/Gatsby_Typescript_Styled_Components) frontend*

*You might now want to [install a Gatsby.js w/ Emotion and TailwindCSS.](https://github.com/brettjrea/Gatsby_Typescript_Emotion_TailwindCSS) frontend*

### This is a copy-paste oneliner for those who dont want to use a script. 

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
---
<details>
<summary>
Command Breakdown
</summary>

In this command, we will update and upgrade the package lists of the system, remove any unneeded packages, install necessary packages for Strapi, install Yarn globally using npm, create a new Strapi project with the quickstart flag, navigate to the newly created Strapi project directory, create a .nvmrc file to specify the Node.js version to use and start the Strapi development server.

### Update and Upgrade Package Lists

```
sudo apt update -y && sudo apt upgrade -y
```

This command updates the list of available packages and their versions, and then upgrades all installed packages to their latest versions.

___

### Remove Unneeded Packages

sudo apt autoremove -y
This command removes any packages that are no longer required by the system.

___

### Install Necessary Packages for Strapi

```
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y
```

This command installs the necessary packages required to run Strapi.

---

### Install Yarn Globally using NPM

```
npm install -g yarn
```

This command installs Yarn globally using npm.

---

### Install pm2 (Process Manager for Node)

```
yarn global add pm2
```

---

### Create a New Strapi Project with Quickstart Flag

```
yarn create strapi-app my-backend --quickstart --no-run
```

This command creates a new Strapi project with the quickstart flag.

----

### Navigate to the Newly Created Strapi Project Directory

```
cd my-backend
```

This command navigates to the directory of the newly created Strapi project.

---

### Create a .nvmrc File to Specify the Node.js Version to Use

```
echo "18.14.2" > .nvmrc
```

This command creates a .nvmrc file in the Strapi project directory with the specified Node.js version.

---

### Start the Strapi Development Server

```
cd ~/my-backend && yarn develop
```

This command starts the Strapi development server, allowing you to start building your Strapi application.
<details>
