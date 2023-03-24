# Android_Userland_Alpine_Wordpress_SQLite

A setup script and breakdown to install Wordpress CMS with a SQLite flat file database on Android using Alpine Linux in the [Userland App](https://github.com/CypherpunkArmory/UserLAnd). Haven't tested it on Alpine for WSL or VM but probably would work. Docker definitely needs docker specific commands.

# Installing quickly with a script.

## Copy and paste this whole command and press enter.

```
su -
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh
wget https://raw.githubusercontent.com/brettjrea/Android_Userland_Alpine_Wordpress_SQLite/master/setupwp.sh
bash fixscripts.sh && bash setupwp.sh
```

# Install by doing what the script does snip by snip.

### Switch to root.

`su -`

### Update, upgrade, and Clean.

```
apk update && apk upgrade && apk autoremove
```

### Install required php modules.

```
apk add fcgi php7-cgi php7-curl php7-ctype php7-dom php7-gd php7-gettext php7-iconv php7-imap php7-json php7-ldap php7-mcrypt php7-mysqli php7-pdo php7-pdo_sqlite php7-phar php7-posix php7-soap php7-sqlite3 php7-xml php7-xmlrpc
```

### Download WP-CLI.phar.

```
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
```

### Make WP-CLI.phar executable.

`chmod +x wp-cli.phar`

### Move WP-CLI.phar to usr/local/bin.

`mv wp-cli.phar /usr/local/bin/wp`

### Update WP-CLI.phar.

`wp cli update`

### Use WP-CLI to download wordpress to /wp.

```
wp core download --path=/wp/ --allow-root
```

### Create wp-config.php from sample config.

```
mv /wp/wp-config-sample.php /wp/wp-config.php
```

### Change into wp-content directory.

`cd /wp/wp-content/`

### Download Sqllite one page drop in.

```
wget https://raw.githubusercontent.com/brettjrea/wp-sqlite-db/master/src/db.php
```

### Change into wp directory.

`cd /wp`

### Start PHP built-in webserver on port 3000.

`wp server --allow-root`
