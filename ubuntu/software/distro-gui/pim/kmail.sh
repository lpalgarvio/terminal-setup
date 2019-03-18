#!/bin/bash

# Install software
sudo apt-get install -y kmail \
                                    kontact kaddressbook \
                                    korganizer \
                                    kdepim-addons;

# Verifications
$(which kmail) --version;
$(which kontact) --version;
$(which kaddressbook) --version;
$(which korganizer) --version;

