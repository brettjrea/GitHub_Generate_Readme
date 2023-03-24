#!/bin/bash

# Upgrade, update and remove unnecessary packages
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y

# Install Yarn and Git
npm install --global yarn
sudo apt install git -y

# Install dependencies
yarn global add typescript
yarn global add gatsby-cli
gatsby options set package-manager yarn

# Create new Gatsby project and add dependencies
gatsby new my-frontend https://github.com/brettjrea/gatsby_typescript_styled_components
cd my-frontend
yarn add styled-components gatsby-plugin-styled-components babel-plugin-styled-components
yarn add -D @types/styled-components
yarn add gatsby-plugin-react-helmet-async react-helmet-async
yarn add gatsby-source-strapi
yarn add gatsby-source-graphql
yarn add gatsby-source-custom-api
