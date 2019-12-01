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
sudo apt-get install -y php5.6-fpm php5.6-cgi php5.6-cli php5.6-xdebug php5.6-opcache php5.6-xml php5.6-json php5.6-soap php5.6-mbstring php5.6-mcrypt php5.6-gmp php5.6-curl php5.6-gd php5.6-imagick php5.6-ldap php5.6-redis php5.6-mysql php5.6-pgsql php5.6-sqlite3;

# Verifications
$(which php5.6) -v;

