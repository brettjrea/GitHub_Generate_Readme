#!/bin/bash

# Define the directories for Strapi and Gatsby
strapi_dir=~/my-backend
gatsby_dir=~/my-frontend

# Define the contents of the ecosystem.config.js file
ecosystem_config="module.exports = {
  apps: [
    {
      name: 'strapi',
      script: 'cd ${strapi_dir} && yarn develop',
      env: {
        NODE_ENV: 'development',
      },
    },
    {
      name: 'gatsby',
      script: 'cd ${gatsby_dir} && yarn develop',
      env: {
        NODE_ENV: 'development',
      },
    },
  ],
};"

# Remove existing ecosystem.config.js files if they exist
rm -f ~/ecosystem.config.js
rm -f ${strapi_dir}/ecosystem.config.js
rm -f ${gatsby_dir}/ecosystem.config.js

# Create the ecosystem.config.js file in the home directory
echo "$ecosystem_config" > ~/ecosystem.config.js

# Create the ecosystem.config.js files in the Strapi and Gatsby directories.
echo "$ecosystem_config" > ${strapi_dir}/ecosystem.config.js
echo "$ecosystem_config" > ${gatsby_dir}/ecosystem.config.js
