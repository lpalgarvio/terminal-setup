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
sudo apt-get install -y php7.1-fpm php7.1-cgi php7.1-cli php7.1-xdebug php7.1-opcache php7.1-xml php7.1-json php7.1-soap php7.1-mbstring php7.1-gmp php7.1-curl php7.1-gd php7.1-imagick php7.1-ldap php7.1-redis php7.1-mysql php7.1-pgsql php7.1-sqlite3;

# Verifications
$(which php7.1) -v;

