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
sudo apt-get install -y php7.0-fpm php7.0-cgi php7.0-cli php7.0-xdebug php7.0-opcache php7.0-xml php7.0-json php7.0-soap php7.0-mbstring php7.0-mcrypt php7.0-gmp php7.0-curl php7.0-gd php7.0-imagick php7.0-ldap php7.0-redis php7.0-mysql php7.0-pgsql php7.0-sqlite3;
sudo apt-get install -y php7.1-fpm php7.1-cgi php7.1-cli php7.1-xdebug php7.1-opcache php7.1-xml php7.1-json php7.1-soap php7.1-mbstring php7.1-gmp php7.1-curl php7.1-gd php7.1-imagick php7.1-ldap php7.1-redis php7.1-mysql php7.1-pgsql php7.1-sqlite3;
sudo apt-get install -y php7.2-fpm php7.2-cgi php7.2-cli php7.2-xdebug php7.2-opcache php7.2-xml php7.2-json php7.2-soap php7.2-mbstring php7.2-gmp php7.2-curl php7.2-gd php7.2-imagick php7.2-ldap php7.2-redis php7.2-mysql php7.2-pgsql php7.2-sqlite3;
sudo apt-get install -y php-pear php-ssh2;

# Configure
sudo update-alternatives --set php $(which php5);

# Verifications
$(which php) -v;
$(which php5.6) -v;
$(which php7.0) -v;
$(which php7.1) -v;
$(which php7.2) -v;
$(which pecl) -V;
$(which pecl) list;

