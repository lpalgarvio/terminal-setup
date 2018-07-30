#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ttf-mscorefonts-installer \
                                   kde-config-gtk-style \
                                   kdeartwork kdeartwork-wallpapers kde-wallpapers \
                                   plasma-widget-addons plasma-widget-weatherforecast \
                                   kdesudo \
                                   konsole yakuake \
                                   dolphin dolphin-plugins kde-service-menu-fuseiso kde-thumbnailer-deb \
                                   synaptic \
                                   qapt-utils qapt-deb-installer \
                                   gtkorphan \
                                   kalternatives;

# Verifications
$(which kdesudo) --version;
$(which konsole) --version;
$(which yakuake) --version;
$(which dolphin) --version;
$(which synaptic) --version;
$(which qapt-utils) --version;
$(which qapt-deb-installer) --version;
$(which gtkorphan) --version;
$(which kalternatives) --version;

