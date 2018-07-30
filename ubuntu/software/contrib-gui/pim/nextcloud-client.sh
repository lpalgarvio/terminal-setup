#!/bin/bash
# https://launchpad.net/~nextcloud-devs/+archive/ubuntu/client

# Repositories and keys
sudo add-apt-repository ppa:nextcloud-devs/client;
sudo apt-get update;

# Install software (client)
sudo apt-get install -y nextcloud-client;

