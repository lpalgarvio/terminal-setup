#!/bin/bash
# https://apt.syncthing.net/

# Repositories and keys
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/syncthing.list
# Syncthing
deb https://apt.syncthing.net/ syncthing stable
EOF';
sudo apt-get update;

# Install software
sudo apt-get install -y syncthing;

