# Ubuntu_Build_A_Server_ISO
***
[GitHub:Ubuntu_Build_A_Server_ISO](https://github.com/brettjrea/Ubuntu_Build_A_Server_ISO)

## A Linux script and developer ready preseed.cfg for fast deployment.
This is a linux script that takes a preseed file and bakes it into a Ubuntu netinstaller ISO for unattended install and configuration of a minimal Ubuntu server.

The preseed file is already configured to install a developer ready classic LAMPstack (Apache, MySQL, PHP) and can be used as is for development as is or adjusted as necessary see the [Wiki](https://github.com/brettjrea/Ubuntu_Build_A_Server_ISO/wiki/Welcome) for more details on common adjustments.
***

## If you already have Ubuntu.
If you already have Ubuntu up and running you can use the following command to install the software packages the script depends on.

1. Install dependencies.
```
sudo apt install dos2unix p7zip-full cpio gzip genisoimage whois pwgen wget fakeroot isolinux xorriso
```
***

## If you have Windows 10 but need Ubuntu.
If you have Windows 10 but need a copy of Ubuntu you can use [brettjrea/Windows-WSL-Ubuntu-LAMP-Wordpress](https://github.com/brettjrea/Windows-WSL-Ubuntu-LAMP-Wordpress) as a jump off point it automatically installs the required dependencies to run the script.
***

## Once you have Ubuntu.
Once you have a running copy of Ubuntu with the dependencies clone the repo to the desired directory with

2. Clone the repo.
```
git clone https://github.com/brettjrea/Ubuntu_Build_A_Server_ISO.git
```
***

## Bake the Golden Image.
Once you have the environment, dependencies and repository in place and you are ready to bake your golden image just run the script and it will download the netinstaller and inject the preseed file into the generated ISO.

3. Bake the Golden Image.
```
bash buildserver.sh
```

Enjoy!
