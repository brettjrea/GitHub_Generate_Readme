#!/bin/bash
### Update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y 
### Install MariaDB and PHP.
sudo apt install mariadb-server php-cli php-curl php-gd php-intl php-mbstring php-mysql php-soap php-xml php-xmlrpc php-zip wget -y
### Start Mysql & Create user.
sudo service mysql start
sudo mysql -uroot <<_EOF_ 
CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'dbpass';
GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost';
FLUSH PRIVILEGES;
_EOF_
### Make WP directory.
mkdir /wp/
### Change into wp directory.
cd /wp/
### Download WP-CLI.deb.
wget -O "wpcli.deb" 'https://github.com/wp-cli/builds/raw/gh-pages/deb/php-wpcli_2.4.0_all.deb'
sudo apt install ./wpcli.deb -y
rm -f wpcli.deb
### Update WP-CLI.
wp cli update
### Use WP-CLI to download wordpress to /wp.
wp core download --path=/wp/
### Use WP-CLI to Create config.php
wp config create --path=/wp/ --dbhost=localhost --dbname=wordpress --dbuser=dbuser --dbpass=dbpass
### Use WP-CLI to create database.
wp db create --path=/wp/
### Use WP-CLI to run install.
wp core install --path=/wp/ --url=http://localhost:8080/ --title=wordpress --admin_user=wpuser --admin_password=wppass --admin_email=info@example.com
### Start PHP built-in webserver on port 3000.
wp server
