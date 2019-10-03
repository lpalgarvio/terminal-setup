#!/bin/bash
# https://github.com/markhellewell/sshconfigfs

# Install dependencies
sudo apt-get install -y ssh python-pip python-setuptools python-wheel python-fuse;

# Install software
wget https://github.com/revboot/sshconfigfs/archive/master.zip -P /tmp/;
sudo unzip -q /tmp/master.zip -d /opt/;
sudo rm -Rf /opt/sshconfigfs;
sudo mv /opt/sshconfigfs-master /opt/sshconfigfs;
sudo -H bash -c '(cd /opt/sshconfigfs; pip install -r requirements.txt)';
rm -f /tmp/master.zip;

# Configuration
# Unmount existing mount point
sudo umount /home/$USER/.sshconfigfs;
# Remove sshconfigfs directory if it exists
if [ -L /home/$USER/.sshconfigfs ]; then
  sudo rm -Rf /home/$USER/.sshconfigfs;
fi
# Move/backup existing compiled or custom ssh configuration file
if [ -L /home/$USER/.ssh/config ]; then
  sudo mv /home/$USER/.ssh/config /home/$USER/.ssh/config.old;
fi
# Symlink sshconfigfs compiled file to ssh configuration file
ln -sf /home/$USER/.sshconfigfs/config /home/$USER/.ssh/config;

# Reset ownership
sudo chown -R $USER:$USER /home/$USER/.sshconfigfs;
sudo chown -R $USER:$USER /opt/sshconfigfs;

# Notes
# Logoff afterwards or run the sshconfigfs script
# /opt/sshconfigfs/sshconfigfs.py
# Add a startup script for this script

