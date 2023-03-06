### Install with Yarn: 
*Originally wrote with NPM but had too many issues with the cache, but yarn worked fine. Moved those instructions to README_NPM.MD*
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
```
```
cd my-frontend && yarn deploy
```
I seperated the command to start development because I am using PM2 from the link below. 👇 

---
*You might now want to [Configure PM2](https://github.com/brettjrea/Debian_Configure_PM2) a node based Process mananger to launch the strapi backend and Gatsby frontend with one command from the terminal to run at the same time in the background so you can still use your terminal.*

*You might now want to [install Theia](https://github.com/brettjrea/Debian_Theia_IDE_Patched) a browser based IDE built on Typescript.*
