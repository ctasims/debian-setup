#!/bin/sh

# Installs git, vim, virtualbox
# Assumes 14.04 Trusty Tahr. If different, need to change VB install.

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install git
sudo apt-get install vim

# Set up git
git config --global user.name "Cianan Sims"
git config --global user.email "Cianan@SimsIndustries.com"

# Set up git credential helper to cache username/pw for 1 hour for https (recommended over ssh)
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'


# INSTALL VIRTUALBOX
# First get host kernel modules updated
sudo apt-get install dkms

# Add repository
echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee -a /etc/apt/sources.list
# Download and register key
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Install VB
sudo apt-get update
sudo apt-get install virtualbox-5.0


# INSTALL PYTHON 3
sudo apt-get install python3 python3-dev virtualenv


# INSTALL PYCHARM 4.5.3
# For different version, update this url
sudo wget https://download.jetbrains.com/python/pycharm-professional-4.5.3.tar.gz
mv pycharm-professional-4.5.3.tar.gz ~/Desktop/pycharm-4.5.3.tar.gz
tar xfz ~/Desktop/pycharm-4.5.3.tar.gz
