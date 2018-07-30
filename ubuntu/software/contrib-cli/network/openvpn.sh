#!/bin/bash
# https://community.openvpn.net/openvpn/wiki/OpenvpnSoftwareRepos

# Repositories and keys
curl -sL https://swupdate.openvpn.net/repos/repo-public.gpg | sudo apt-key add -;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/openvpn.list
# OpenVPN
deb http://build.openvpn.net/debian/openvpn/stable xenial main
EOF';
sudo apt-get update;

# Install software (client and server)
sudo apt-get install -y openvpn;

