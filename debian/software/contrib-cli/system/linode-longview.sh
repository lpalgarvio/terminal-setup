#!/bin/bash
# https://linode.com/docs/platform/longview/longview/#manual-installation-with-yum-or-apt

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
sudo curl -O https://apt-longview.linode.com/linode.gpg;
sudo mv linode.gpg /etc/apt/trusted.gpg.d/linode.gpg;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/longview.list
# Linode Longview
deb http://apt-longview.linode.com/ ${os_codename} main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y linode-longview;

