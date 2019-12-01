#!/bin/bash
# https://launchpad.net/%7Eondrej/+archive/ubuntu/php

# Repositories and keys
sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

# Install software
sudo apt-get install -y php5.6-cli php5.6-xdebug php5.6-opcache php5.6-xml php5.6-json php5.6-soap php5.6-mbstring php5.6-mcrypt php5.6-gmp php5.6-curl php5.6-gd php5.6-imagick php5.6-ldap php5.6-redis php5.6-mysql php5.6-pgsql php5.6-sqlite3;

# Verifications
$(which php5.6) -v;

