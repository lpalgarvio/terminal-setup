#!/bin/bash
# https://linode.com/docs/platform/longview/longview/#manual-installation-with-yum-or-apt

# Repositories and keys
sudo curl -O https://apt-longview.linode.com/linode.gpg;
sudo mv linode.gpg /etc/apt/trusted.gpg.d/linode.gpg;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/longview.list
# Longview
deb http://apt-longview.linode.com/ jessie main
EOF'
sudo apt-get update;

# Install software
sudo apt-get install -y linode-longview;

