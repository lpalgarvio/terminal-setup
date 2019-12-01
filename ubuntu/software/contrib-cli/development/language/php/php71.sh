#!/bin/bash
# https://launchpad.net/%7Eondrej/+archive/ubuntu/php

# Repositories and keys
sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

# Install software
sudo apt-get install -y php7.1-cli php7.1-xdebug php7.1-opcache php7.1-xml php7.1-json php7.1-soap php7.1-mbstring php7.1-gmp php7.1-curl php7.1-gd php7.1-imagick php7.1-ldap php7.1-redis php7.1-mysql php7.1-pgsql php7.1-sqlite3;

# Verifications
$(which php7.1) -v;

