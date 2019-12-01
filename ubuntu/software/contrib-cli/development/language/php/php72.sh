#!/bin/bash
# https://launchpad.net/%7Eondrej/+archive/ubuntu/php

# Repositories and keys
sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

# Install software
sudo apt-get install -y php7.2-cli php7.2-xdebug php7.2-opcache php7.2-xml php7.2-json php7.2-soap php7.2-mbstring php7.2-gmp php7.2-curl php7.2-gd php7.2-imagick php7.2-ldap php7.2-redis php7.2-mysql php7.2-pgsql php7.2-sqlite3;

# Verifications
$(which php7.2) -v;

