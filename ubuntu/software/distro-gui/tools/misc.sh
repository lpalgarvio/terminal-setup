#!/bin/bash

# Install software
sudo apt-get install -y kalarm \
                                   ktimer \
                                   kruler \
                                   kcharselect \
                                   kcolorchooser \
                                   krename;
#sudo apt-get install -y kfilereplace;

# Verifications
$(which kalarm) --version;
$(which ktimer) --version;
$(which kruler) --version;
$(which kcharselect) --version;
$(which kcolorchooser) --version;
$(which krename) --version;
#$(which kfilereplace) --version;

