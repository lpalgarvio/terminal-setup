#!/bin/bash
# https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx

# Install software
$(which php) -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');";
sudo $(which php) /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer;
$(which php) -r "unlink('/tmp/composer-setup.php');";
$(which composer) global require grasmash/composerize-drupal;

# Reset ownership
sudo chown -R $USER:$USER /home/$USER/.composer;

# Verifications
$(which composer) --version;

