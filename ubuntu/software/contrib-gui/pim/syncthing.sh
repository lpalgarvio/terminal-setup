#!/bin/bash
# https://apt.syncthing.net/

# Repositories and keys
sudo add-apt-repository ppa:nilarimogard/webupd8;
sudo apt-get update;

# Install software
sudo apt-get install -y syncthing-gtk;

