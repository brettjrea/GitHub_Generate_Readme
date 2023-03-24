---
title: WSL_Debian_Jekyll
layout: repos
permalink: /WSL_Debian_Jekyll/
repository_weight: 3
---

# Windows_WSL_Debian_Jekyll

---

<details>
<summary>Overview</summary>
The following is a quick script to install Jekyll on Debian wrote and tested with Debian 10 'Buster' on WSL.
For those of you that want to know what each command does I've also included a snip by snip below it defining each step.
</details>

---

# Installing quickly with a script.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wget https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian_Jekyll/master/setupjek.sh &&
sudo bash fixscripts.sh &&
sudo bash setupjek.sh
```

and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

# Install by doing what the script does snip by snip.

### Update, upgrade & clean.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y
```

and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Install preliminary packages.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
sudo apt install ruby-full build-essential zlib1g-dev
```

and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Add Environmental Variables.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Check ruby for updates.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`gem update --system`


and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Install Bundler Jekyll

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`gem install jekyll bundler`


and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Create a Jekyll site.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`jekyll new jek`


and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Move into the new site directory.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`cd jek`


and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Initiate site dependencies with bundle.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bundle install`

and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### Start Jekyll server.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

`bundle exec jekyll serve`

and paste into debian terminal with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---
