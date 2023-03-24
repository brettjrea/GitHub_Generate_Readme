# Windows_WSL_Debian_Wordpress_MariaDB

<details>
<summary>Overview</summary>
A setup script with breakdown to install Wordpress CMS with MariaDB on Debian 10 'Buster' and Ubuntu 18.04 'Bionic'. 
I wrote and tested it to be a minimal **"just what you need"** development environment for WSL.
</details>

---

# Installing quickly with a script.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wget https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian_Wordpress_MariaDB/master/setupwp.sh &&
bash fixscripts.sh &&
bash setupwp.sh
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

# Install by doing what the script does snip by snip.

### Update, upgrade & clean.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Install MariaDB and PHP.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
sudo apt install mariadb-server php-cli php-curl php-gd php-intl php-mbstring php-mysql php-soap php-xml php-xmlrpc php-zip wget -y
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Start Mysql & Create User.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`sudo service mysql start`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```sql
sudo mysql -uroot <<_EOF_ 
CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'dbpass';
GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost';
FLUSH PRIVILEGES;
_EOF_
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Make WP directory.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`sudo mkdir /wp/`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Change permissions.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`sudo chmod -R 777 /wp/`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Change into WP directory.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`cd /wp/`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Download WP-CLI.deb.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
sudo wget -O "wpcli.deb" 'https://github.com/wp-cli/builds/raw/gh-pages/deb/php-wpcli_2.4.0_all.deb'
sudo apt install ./wpcli.deb -y
sudo rm -f wpcli.deb
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Update WP-CLI.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`sudo wp cli update`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Use WP-CLI to download wordpress to /wp.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`wp core download --path=/wp/`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Use WP-CLI to Create config.php

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wp config create --path=/wp/ --dbhost=localhost --dbname=wordpress --dbuser=dbuser --dbpass=dbpass
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---
### Use WP-CLI to create database.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`wp db create --path=/wp/`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Use WP-CLI to run install.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wp core install --path=/wp/ --url=http://localhost:8080/ --title=wordpress --admin_user=wpuser --admin_password=wppass --admin_email=info@example.com
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Start PHP built-in webserver on port 8080.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`wp server`
and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---
