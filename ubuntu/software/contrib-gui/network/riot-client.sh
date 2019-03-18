#!/bin/bash
# https://riot.im/desktop.html

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
curl -sL https://riot.im/packages/debian/repo-key.asc | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/matrix-riot-im.list
# Riot Client
deb [arch=amd64] https://riot.im/packages/debian/ ${os_codename} main
EOF";
sudo apt-get update;

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
sudo apt-get install -y riot-web;

