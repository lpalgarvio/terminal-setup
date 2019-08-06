#!/bin/bash
# http://docs.drush.org/en/8.x/install/

# Install software
sudo bash -c '$(which php) -r "readfile(\"https://github.com/drush-ops/drush/releases/download/8.1.17/drush.phar\");" > /usr/local/bin/drush';
sudo chmod +x /usr/local/bin/drush;
$(which drush) core-init --add-path -y;
$(which drush) @none dl registry_rebuild-7.x;
$(which drush) dl composer_generate;
$(which drush) cc drush;

# Reset ownership
sudo chown -R $USER:$USER /home/$USER/.drush;

# Verifications
$(which drush) core-status;

