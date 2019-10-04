#!/bin/bash
# https://github.com/syncthing/syncthing-gtk
# https://launchpad.net/~nilarimogard/+archive/ubuntu/webupd8

# Repositories and keys
sudo add-apt-repository ppa:nilarimogard/webupd8;
sudo apt-get update;

# Install software
sudo apt-get install -y syncthing-gtk;

