#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y gimp gimp-help-en \
                                   gimp-gutenprint \
                                   gimp-dds gimp-ufraw ;

# Verifications
$(which gimp) --version;

