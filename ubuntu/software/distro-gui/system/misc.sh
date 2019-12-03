#!/bin/bash

# Install software
sudo apt-get install -y ttf-mscorefonts-installer \
                                   dolphin dolphin-plugins \
                                   software-properties-kde \
                                   qapt-utils qapt-deb-installer \
                                   muon synaptic gtkorphan;

# Verifications
$(which dolphin) --version;
$(which software-properties-kde) --version;
$(which qapt-deb-installer) --version;
$(which muon) --version;
$(which synaptic) -h;
#$(which gtkorphan) --version;

