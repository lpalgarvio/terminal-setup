#!/bin/bash
# https://github.com/syncthing/syncthing-gtk
# https://software.opensuse.org/download.html?project=home%3Akozec&package=syncthing-gtk

# Retrieve distro information
os_release=`lsb_release -sr | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
curl -sL https://download.opensuse.org/repositories/home:kozec/Debian_${os_release}/Release.key | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/home:kozec.list
# home:kozec.list
deb http://download.opensuse.org/repositories/home:/kozec/Debian_${os_release}/ /
EOF";
sudo apt-get update;

# Install software (client)
sudo apt-get install -y syncthing-gtk

