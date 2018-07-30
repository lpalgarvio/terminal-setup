#!/bin/bash
# https://www.torproject.org/docs/debian.html.en

# Repositories and keys
sudo apt-key adv --keyserver keys.gnupg.net --recv-key A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/torproject.list
# Tor Project
deb https://deb.torproject.org/torproject.org jessie main
EOF';
sudo apt-get update;

# Install dependencies
sudo apt-get install -y deb.torproject.org-keyring libappindicator1;

# Install software
sudo apt-get install -y tor;

