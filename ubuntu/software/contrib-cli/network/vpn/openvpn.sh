#!/bin/bash
# https://community.openvpn.net/openvpn/wiki/OpenvpnSoftwareRepos

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
curl -sL https://swupdate.openvpn.net/repos/repo-public.gpg | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/openvpn.list
# OpenVPN
deb http://build.openvpn.net/debian/openvpn/stable ${os_codename} main
EOF";
sudo apt-get update;

# Install software (client and server)
sudo apt-get install -y openvpn;

