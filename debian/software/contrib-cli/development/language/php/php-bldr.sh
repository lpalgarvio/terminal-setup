#!/bin/bash
# http://bldr.io/

# Install software
sudo curl -L "http://bldr.io/installer" | php;
sudo chmod +x bldr.phar;
sudo mv bldr.phar /usr/local/bin/bldr;

# Verifications
$(which bldr) help;

