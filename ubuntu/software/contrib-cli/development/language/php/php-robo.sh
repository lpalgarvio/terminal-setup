#!/bin/bash
# https://robo.li/

# Install software
sudo curl -L "http://robo.li/robo.phar" -o /tmp/robo.phar;
sudo chmod +x /tmp/robo.phar;
sudo mv /tmp/robo.phar /usr/local/bin/robo;

# Verifications
$(which robo) --version;

