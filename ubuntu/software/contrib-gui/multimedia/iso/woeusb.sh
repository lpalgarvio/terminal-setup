#!/bin/bash
# https://github.com/slacka/WoeUSB
# https://www.ubuntuupdates.org/ppa/webupd8?dist=bionic

# Repositories and keys
sudo add-apt-repository ppa:nilarimogard/webupd8;
sudo apt-get update;

# Install software
sudo apt-get install -y woeusb;

