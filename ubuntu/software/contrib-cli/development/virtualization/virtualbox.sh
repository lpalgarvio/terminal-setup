#!/bin/bash

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -;
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/virtualbox.list
# Virtualbox
deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian ${os_codename} contrib
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y virtualbox virtualbox-dkms \
                                   virtualbox-ext-pack virtualbox-guest-additions-iso;

# Configuration
sudo usermod -aG vboxusers $USER;

