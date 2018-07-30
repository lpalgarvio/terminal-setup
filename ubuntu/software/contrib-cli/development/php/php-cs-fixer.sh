#!/bin/bash
# https://github.com/FriendsOfPhp/PHP-CS-Fixer

# Install software
wget http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -P /tmp/;
sudo chmod +x /tmp/php-cs-fixer-v2.phar;
sudo mv /tmp/php-cs-fixer-v2.phar /usr/local/bin/php-cs-fixer;

# Verifications
$(which php-cs-fixer) --version;

