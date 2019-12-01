#!/bin/bash
# https://github.com/containers/buildah/blob/master/install.md

# Repositories and keys
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 0x018ba5ad9df57a4448f0e6cf8becf1637ad8c79d;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/projectatomic-ubuntu-ppa.list
# Podman
deb http://ppa.launchpad.net/projectatomic/ppa/ubuntu bionic main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y buildah;

