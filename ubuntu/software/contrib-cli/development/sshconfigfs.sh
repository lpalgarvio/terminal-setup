#!/bin/bash
# https://github.com/markhellewell/sshconfigfs

# Install dependencies
sudo apt-get install -y ssh python-pip python-setuptools python-wheel python-fuse;

# Install software
wget https://github.com/markhellewell/sshconfigfs/archive/master.zip -P /tmp/;
sudo unzip -q /tmp/master.zip -d /opt/;
sudo rm -Rf /opt/sshconfigfs;
sudo mv /opt/sshconfigfs-master /opt/sshconfigfs;
sudo -H bash -c '(cd /opt/sshconfigfs; pip install -r requirements.txt)';
rm -f /tmp/master.zip;

# Configuration
sudo umount /home/$USER/.sshconfigfs;
if [ -L /home/$USER/.sshconfigfs ]; then
  sudo rm -f /home/$USER/.sshconfigfs;
fi
if [ -L /home/$USER/.ssh/config ]; then
  sudo rm -f /home/$USER/.ssh/config;
else
  sudo mv /home/$USER/.ssh/config /home/$USER/.ssh/config.old;
fi
ln -sf /home/$USER/.sshconfigfs/config /home/$USER/.ssh/config;

# Reset ownership
sudo chown -R $USER:$USER /home/$USER/.sshconfigfs;
sudo chown -R $USER:$USER /opt/sshconfigfs;

