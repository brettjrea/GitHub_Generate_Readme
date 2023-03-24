#!/bin/bash
### Disable Prompts.
DEBIAN_FRONTEND=noninteractive
### update, upgrade & clean.
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y
### Install common packages.
sudo apt install ruby-full build-essential zlib1g-dev -y
### Add Environmental variables.
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
### Check ruby for updates.
gem update --system
### Install Jekyll Bundler
gem install jekyll bundler
### Create jekyll site.
jekyll new jek
### Change directory.
cd jek
### Initiate site dependencies.
bundle install
### Start jekyll server.
bundle exec jekyll serve
