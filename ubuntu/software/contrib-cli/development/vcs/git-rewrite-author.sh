#!/bin/bash
# https://github.com/davidfokkema/git-rewrite-author

# Install dependencies
sudo apt-get install -y python-pip python-setuptools python-wheel;

# Install software
wget https://github.com/davidfokkema/git-rewrite-author/archive/master.zip -P /tmp/;
sudo unzip -q /tmp/master.zip -d /usr/local/src/;
sudo rm -Rf /usr/local/src/git-rewrite-author;
sudo mv /usr/local/src/git-rewrite-author-master /usr/local/src/git-rewrite-author;
sudo bash -c '(cd /usr/local/src/git-rewrite-author; python setup.py install)';
rm -f /tmp/master.zip;

