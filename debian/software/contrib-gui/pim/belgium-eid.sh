#!/bin/bash
# https://eid.belgium.be/en/linux-eid-software-installation

# Releases
app_release='2018.2';

# Repositories and keys
curl -sL http://files.eid.belgium.be/debian/dists/jessie/Release.gpg | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/belgium-eid.list
# Belgium eID
deb [arch=amd64] http://files.eid.belgium.be/debian/ jessie main
EOF';
sudo apt-get update;

# Install software
sudo apt-get install -y eid-viewer eid-mw;

# Install plugins
sudo apt-get install -y beid-mozilla-extension;

