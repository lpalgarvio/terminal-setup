#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kalarm \
                                   ktimer \
                                   kruler \
                                   kcharselect \
                                   kcolorchooser \
                                   kfilereplace \
                                   krename;

# Verifications
$(which kalarm) --version;
$(which ktimer) --version;
#$(which kruler) --version;
$(which kcharselect) --version;
$(which kcolorchooser) --version;
$(which kfilereplace) --version;
$(which krename) --version;

