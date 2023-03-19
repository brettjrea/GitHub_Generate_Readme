#!/bin/bash

# Update package lists and upgrade packages to their latest versions
sudo apt update -y && sudo apt upgrade -y

# Remove any packages that are no longer required
sudo apt autoremove -y

# Install required packages for Strapi
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y

# Install Yarn globally using npm
npm install -g yarn

# Install PM2 (Process Manager for Node)
yarn global add pm2

# Create a new Strapi project with the quickstart flag
yarn create strapi-app my-backend --quickstart --no-run

# Navigate to the newly created Strapi project directory
cd my-backend && echo "18.15" > .nvmrc

#GraphQL plugin
yarn strapi install graphql

# server.js for PM2
echo "const strapi = require('@strapi/strapi');
strapi().start();" > server.js

# Start Strapi with PM2
pm2 start yarn --name my-backend -- start

# Wait for 20 seconds
sleep 20

# Stop Strapi with PM2
pm2 stop my-backend

# Delete all PM2 processes
pm2 delete all

# Install the init admin user plugin
yarn add strapi-plugin-init-admin-user

# Set up environment variables and append to existing .env file
echo "INIT_ADMIN_USERNAME=admin
INIT_ADMIN_PASSWORD=admin
INIT_ADMIN_FIRSTNAME=Admin
INIT_ADMIN_LASTNAME=Admin
INIT_ADMIN_EMAIL=admin@init-strapi-admin.strapi.io" >> .env
