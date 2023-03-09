### Debian Gatsby Frontend Client

#### This new one fetches a script from this repo which is useful for using inside of another script.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Gatsby_Frontend_Client/main/install-gatsby.sh &&
chmod +x install-gatsby.sh &&
./install-gatsby.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
```

```
cd ~/my-frontend && yarn deploy
```

I seperated the command to start development because I am using PM2 from the link above. ☝️ 

#### This is a copy-paste of the commands for those who dont want to use a script.
```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
npm install --global yarn &&
sudo apt install git -y &&
yarn global add typescript &&
yarn global add gatsby-cli &&
gatsby options set package-manager yarn &&
gatsby new my-frontend https://github.com/brettjrea/gatsby_typescript_styled_components &&
cd my-frontend &&
yarn add styled-components gatsby-plugin-styled-components babel-plugin-styled-components &&
yarn add -D @types/styled-components &&
yarn add gatsby-plugin-react-helmet-async react-helmet-async &&
yarn add gatsby-source-strapi &&
yarn add gatsby-source-graphql &&
yarn add gatsby-source-custom-api
```
```
cd my-frontend && yarn deploy
```
