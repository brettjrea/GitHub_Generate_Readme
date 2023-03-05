### Upgrade Debian Buster to Bullseye with upgrade.sh

This markdown provides a quick and easy script to upgrade a Debian Buster operating system to Bullseye. The script has been verified as still working in 2022, although it may require the manual installation of wget.

### Quickscript:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Bullseye_Upgrade_Script/master/upgrade.sh &&
sudo bash fixscripts.sh &&
sudo bash upgrade.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
set -o emacs
```
---
<details>
<summary>Script Breakdown:</summary>

---

### Always be updating:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y
```

### Install required programs:

```
sudo apt install wget -y
```

### Download scripts:

```
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Bullseye_Upgrade_Script/master/upgrade.sh &&
```

### Run scripts:

```
sudo bash fixscripts.sh &&
sudo bash upgrade.sh
```
### Cleanup

```
sudo apt autoremove -y &&
sudo apt clean -y
```

---
## Keybindings

*The following command adds emac or vim key bindings which is a good workaround for the missing up and down keys on chromeos virtual keyboard.*

```
set -o emacs
```

Or

```
set -o vi
```
