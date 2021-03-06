#!/bin/bash
# https://packages.sury.org/php/

# Requirements
sudo apt-get -y install lsb-release;

# Repositories and keys
wget -O- https://packages.sury.org/php/apt.gpg | sudo apt-key add -;
sudo bash -c "cat << EOF > /etc/apt/sources.list.d/sury.list
# Sury Packages
deb https://packages.sury.org/php/ $(lsb_release -sc) main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y php-pear php-ssh2;

# Configure
sudo update-alternatives --set php $(which php7.1);

# Verifications
$(which php) -v;
$(which pecl) -V;
$(which pecl) list;

