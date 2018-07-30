#!/bin/bash
# https://riot.im/desktop.html

# Repositories and keys
curl -sL https://riot.im/packages/debian/repo-key.asc | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/matrix-riot-im.list
# Riot Client
deb [arch=amd64] https://riot.im/packages/debian/ xenial main
EOF';
sudo apt-get update;

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
sudo apt-get install -y riot-web;

