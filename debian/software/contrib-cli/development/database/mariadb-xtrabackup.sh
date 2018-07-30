#!/bin/bash
# https://www.percona.com/doc/percona-xtrabackup/LATEST/installation/apt_repo.html

# Releases
app_release='0.1-6';
os_release=$(lsb_release -sc);

# Repositories and keys
wget https://repo.percona.com/apt/percona-release_${app_release}.${os_release}_all.deb -P /tmp/;
sudo dpkg -i /tmp/percona-release_${app_release}.${os_release}_all.deb;
rm -f /tmp/percona-release_${app_release}.${os_release}_all.deb;
sudo apt-get update;

# Install software
sudo apt-get install -y percona-xtrabackup-24;

# Configuration
sudo mkdir /etc/mysql/conf.d;

# Verifications
$(which xtrabackup) --version;

