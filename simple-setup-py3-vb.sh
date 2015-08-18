#!/bin/sh

# Installs git, vim, virtualbox
# Assumes 14.04 Trusty Tahr. If different, need to change VB install.

# Add extra repos for fish shell and virtualbox
sudo apt-add-repository ppa:fish-shell/release-2
echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee -a /etc/apt/sources.list
# Download and register vb repo key
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update && sudo apt-get upgrade --yes

sudo apt-get install --yes git
sudo apt-get install --yes vim

# Set up git
git config --global user.name "Cianan Sims"
git config --global user.email "Cianan@SimsIndustries.com"
git config --global push.default simple

# Set up git credential helper to cache username/pw for 1 hour for https (recommended over ssh)
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'


# INSTALL VIRTUALBOX
# First get host kernel modules updated
sudo apt-get install --yes dkms
sudo apt-get install --yes virtualbox-5.0


# INSTALL PYTHON 3
sudo apt-get install python3 python3-dev virtualenv


# INSTALL PYCHARM 4.5.3
# For different version, update this url
sudo wget https://download.jetbrains.com/python/pycharm-professional-4.5.3.tar.gz
mv pycharm-professional-4.5.3.tar.gz ~/Desktop/pycharm-4.5.3.tar.gz
tar xfz ~/Desktop/pycharm-4.5.3.tar.gz
mv ~/pycharm-4.5.3 ~/Desktop/pycharm-4.5.3


# Install ANSIBLE, VAGRANT
sudo apt-get install --yes ansible vagrant


# INSTALL FISH
sudo apt-get install fish

