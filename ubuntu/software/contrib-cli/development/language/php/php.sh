#!/bin/bash
# https://launchpad.net/%7Eondrej/+archive/ubuntu/php

# Repositories and keys
sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

# Install software
sudo apt-get install -y php-pear php-ssh2;

# Configure
sudo update-alternatives --set php $(which php7.1);

# Verifications
$(which php) -v;
$(which pecl) -V;
$(which pecl) list;

