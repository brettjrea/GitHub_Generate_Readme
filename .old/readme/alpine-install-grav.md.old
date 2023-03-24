### Android_Userland_Alpine_Grav_CMS

A setup script and breakdown to install GravCMS on Android using Alpine Linux in the [Userland App](https://github.com/CypherpunkArmory/UserLAnd). Haven't tested it on Alpine for WSL or VM but probably would work. Docker definitely needs docker specific commands.
 
## Installing quickly with a script.
 
```
su -
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh
wget https://raw.githubusercontent.com/brettjrea/Android_Userland_Alpine_Grav_CMS/master/setupgrav.sh
bash fixscripts.sh && bash setupgrav.sh
```

## Install by doing what the script does snip by snip.

### Switch to root.

`su -`

### Update, upgrade & clean.

```
apk update && apk upgrade && apk autoremove
```

### Install git and php.

```
apk add git php7 php7-curl php7-ctype php7-dom php7-gd php7-json php7-mbstring php7-openssl php7-session php7-simplexml php7-xml php7-zip php7-iconv php7-phar
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
php -S localhost:8000 system/router.php`
```
