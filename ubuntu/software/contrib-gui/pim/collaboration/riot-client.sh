#!/bin/bash
# https://riot.im/desktop.html

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
sudo apt-key remove 6FEB6F83D48B93547E7DFEDEE019645248E8F4A1;
sudo wget -O /usr/share/keyrings/riot-im-archive-keyring.gpg https://packages.riot.im/debian/riot-im-archive-keyring.gpg;
sudo rm -f /etc/apt/sources.list.d/matrix-riot-im.list*;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/riot-im.list
# Riot Client
deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ ${os_codename} main
EOF";
sudo apt-get update;

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
sudo apt-get install -y riot-web;

