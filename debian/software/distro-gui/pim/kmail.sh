#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kmail \
                                    kontact kaddressbook \
                                    korganizer;

# Verifications
$(which kmail) --version;
$(which kontact) --version;
$(which kaddressbook) --version;
$(which korganizer) --version;

