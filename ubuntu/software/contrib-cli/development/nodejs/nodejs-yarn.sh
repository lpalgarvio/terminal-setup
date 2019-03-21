#!/bin/bash
# https://yarnpkg.com/en/docs/install#debian-stable

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
wget -O- https://dl.yarnpkg.com/${os_distro}/pubkey.gpg | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/yarn.list
# Yarn
deb https://dl.yarnpkg.com/${os_distro}/ stable main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y yarn;

# Verifications
$(which yarn) --version;

