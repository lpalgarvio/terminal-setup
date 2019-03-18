#!/bin/bash

# Install software
sudo apt-get install -y ttf-mscorefonts-installer \
                                   konsole yakuake \
                                   dolphin dolphin-plugins \
                                   software-properties-qt \
                                   qapt-utils qapt-deb-installer \
                                   muon gtkorphan;

# Verifications
$(which konsole) --version;
$(which yakuake) --version;
$(which dolphin) --version;
$(which software-properties-qt) --version;
$(which qapt-deb-installer) --version;
$(which muon) --version;
#$(which gtkorphan) --version;

