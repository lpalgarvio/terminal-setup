#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kde-config-systemd \
                                   kde-config-qt-graphicssystem \
                                   kde-config-gtk-style \
                                   colord-kde \
                                   kdeartwork kdeartwork-wallpapers kde-wallpapers \
                                   ttf-mscorefonts-installer \
                                   plasma-widgets-addons plasma-widget-weatherforecast \
                                   kdesudo \
                                   konsole yakuake \
                                   dolphin dolphin-plugins kde-service-menu-fuseiso kde-thumbnailer-deb \
                                   synaptic software-properties-kde \
                                   qapt-utils qapt-deb-installer \
                                   gtkorphan \
                                   kalternatives;

# Verifications
$(which kdesudo) --version;
$(which konsole) --version;
$(which yakuake) --version;
$(which dolphin) --version;
#$(which synaptic) --version;
#$(which software-properties-kde) --version;
$(which qapt-deb-installer) --version;
#$(which gtkorphan) --version;

