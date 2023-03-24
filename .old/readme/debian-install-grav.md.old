# Android_Userland_Debian_Grav_CMS

A setup script with breakdown to install Grav CMS on Debian 10 'Buster' and Ubuntu 18.04 'Bionic'. 
I wrote and tested it to be a minimal "just what you need" development environment on the Userland App for Android to keep complexity low and the ability to successfully learn from it high.

# Installing quickly with a script.

## Copy and paste this whole command and press enter.
```
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y &&
sudo apt install wget -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Android_Userland_Debian_Grav_CMS/master/setupgrav.sh &&
bash fixscripts.sh &&
bash setupgrav.sh
```

# Install by doing what the script does snip by snip.

### Update, upgrade & clean.

```
sudo apt update -y && 
sudo apt upgrade -y &&
sudo apt autoremove -y
```

### Install git and php.

```
sudo apt install git php-cli php-common php-curl php-gd php-json php-mbstring php-xml php-zip unzip zip -y
```

### Fix git.

```
git config --global http.sslverify "false"
```

### Install Composer.

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
```

### Clone grav from github.

```
git clone -b master https://github.com/getgrav/grav.git
```

### Move into grav directory.

`cd ~/grav`

### Use composer to install dependecies.

`composer install --no-dev -o`

### Run grav installer.

`bin/grav install`

### Install grav admin panel.

`bin/gpm install admin -y`

### Install git-sync.

`bin/gpm install git-sync`

### Check for grav upgrade.

`bin/gpm selfupgrade -f`

### Check for theme plugin updates.

`bin/gpm update -f`

### Start PHP built-in webserver with router.php.

```
php -S localhost:8000 system/router.php
```
