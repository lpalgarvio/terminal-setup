#!/bin/bash
# https://www.skype.com/en/get-skype/

# Repositories and keys
curl -sL https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/skype-stable.list
# Skype Client
deb [arch=amd64] https://repo.skype.com/deb stable main
EOF";
sudo apt-get update;

# Install dependencies
#sudo apt-get install -y gnome-keyring libgnome-keyring0;

# Install software (client)
sudo apt-get install -y skypeforlinux;

