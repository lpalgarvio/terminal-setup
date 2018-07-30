#!/bin/bash


# Repositories and keys
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/virtualbox.list
# Virtualbox
deb https://download.virtualbox.org/virtualbox/debian xenial contrib
EOF';
sudo apt-get update;

# Install software
sudo apt-get install -y virtualbox virtualbox-dkms \
                                   virtualbox-ext-pack virtualbox-guest-additions-iso;

# Configuration
sudo usermod -aG vboxusers $USER;

