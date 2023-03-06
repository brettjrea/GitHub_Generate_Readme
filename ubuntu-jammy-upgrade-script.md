### Upgrade Ubuntu Focal to Jammy with upgrade.sh

Verified still working 2022 but needed to manually install wget

### Quickscript:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Ubuntu_Jammy_Upgrade_Script/master/upgrade.sh &&
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

### Prevent connection issues.
```
sudo apt-get install --reinstall ca-certificates -y
```

### Download scripts:

```
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Ubuntu_Jammy_Upgrade_Script/master/upgrade.sh &&
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

*Ctrl-p is previous or up.*

*Ctrl-n is next or down.*

---

*You might now want to [Install NVS](https://github.com/brettjrea/Debian_Install_NVS)*

*You might now want to [Install NVM](https://github.com/brettjrea/Debian_Install_NVM)*
<details>
