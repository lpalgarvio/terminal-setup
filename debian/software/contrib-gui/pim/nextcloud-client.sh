#!/bin/bash
# https://docs.nextcloud.com/server/11/admin_manual/installation/source_installation.html

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
curl -sL https://repo.morph027.de/gpg.key | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/morph027-nextcloud-server.list
# NextCloud Server
deb [arch=amd64] https://repo.morph027.de/nextcloud-client ${os_codename} main
EOF";
sudo apt-get update;

# Install software (client)
sudo apt-get install -y nextcloud-client;

