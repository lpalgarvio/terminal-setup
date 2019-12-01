#!/bin/bash
# https://launchpad.net/%7Eondrej/+archive/ubuntu/php

# Repositories and keys
sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

# Install software
sudo apt-get install -y php7.0-cli php7.0-xdebug php7.0-opcache php7.0-xml php7.0-json php7.0-soap php7.0-mbstring php7.0-mcrypt php7.0-gmp php7.0-curl php7.0-gd php7.0-imagick php7.0-ldap php7.0-redis php7.0-mysql php7.0-pgsql php7.0-sqlite3;

# Verifications
$(which php7.0) -v;

