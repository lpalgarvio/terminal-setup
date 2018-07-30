#!/bin/bash
# https://yarnpkg.com/en/docs/install#debian-stable

# Repositories and keys
wget -O- https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/yarn.list
# Yarn repository
deb https://dl.yarnpkg.com/debian/ stable main
EOF';
sudo apt-get update;

# Install software
sudo apt-get install -y yarn;

# Verifications
$(which yarn) --version;

