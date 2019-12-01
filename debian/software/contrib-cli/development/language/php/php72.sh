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
sudo apt-get install -y php7.2-fpm php7.2-cgi php7.2-cli php7.2-xdebug php7.2-opcache php7.2-xml php7.2-json php7.2-soap php7.2-mbstring php7.2-gmp php7.2-curl php7.2-gd php7.2-imagick php7.2-ldap php7.2-redis php7.2-mysql php7.2-pgsql php7.2-sqlite3;

# Verifications
$(which php7.2) -v;

