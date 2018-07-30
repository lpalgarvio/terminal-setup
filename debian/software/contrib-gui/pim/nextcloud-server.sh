#!/bin/bash
# https://docs.nextcloud.com/server/11/admin_manual/installation/source_installation.html

# Repositories and keys
curl -sL https://repo.morph027.de/gpg.key | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/morph027-nextcloud-server.list
# NextCloud Server
deb [arch=amd64] https://repo.morph027.de/nextcloud-client jessie main
EOF';
sudo apt-get update;

# Install software (server)
sudo apt-get install -y nextcloud-server;

