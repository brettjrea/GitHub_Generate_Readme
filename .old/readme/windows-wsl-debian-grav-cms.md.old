# Windows_WSL_Debian_Grav_CMS

<details>
<summary>Overview</summary>
A setup script with breakdown to install Grav CMS on Debian 10 'Buster' and Ubuntu 18.04 'Bionic'. 
I wrote and tested it to be a minimal "just what you need" development environment keeping complexity low and the ability to successfully learn from it high.
</details>

---

# Installing quickly with a script.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wget https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian_Grav_CMS/master/setupgrav.sh &&
bash fixscripts.sh &&
bash setupgrav.sh
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

### Install git and php.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
sudo apt install git php-cli php-common php-curl php-gd php-json php-mbstring php-xml php-zip unzip zip -y
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Install Composer.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Clone grav from github.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
git clone -b master https://github.com/getgrav/grav.git
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Move into grav directory.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`cd ~/grav`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Use composer to install dependecies.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`composer install --no-dev -o`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Run grav installer.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bin/grav install`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Install grav admin panel.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bin/gpm install admin -y`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Install git-sync.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bin/gpm install git-sync`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Check for grav upgrade.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bin/gpm selfupgrade -f`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Check for theme plugin updates.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bin/gpm update -f`

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Start PHP built-in webserver with router.php.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
php -S localhost:8000 system/router.php
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---
