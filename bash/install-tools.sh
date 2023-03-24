#!/bin/bash

# Install common languages
sudo apt install python3 -y

# Install Common Utilities
sudo apt install nano net-tools zip -y

# Install Common Fetchers
sudo apt install curl git wget -y

# Install Common Compilers
sudo apt install g++ gcc make -y

# Install Common JSON Processor
sudo apt install jq -y

# Install the libsecret library for secure password storage
sudo apt-get install libsecret-1-0 -y

# The libsecret library files are typically installed in the /usr/lib/ directory
# and header files are located in the /usr/include/libsecret-1/ directory.
