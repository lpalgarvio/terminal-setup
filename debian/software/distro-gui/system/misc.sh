#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ttf-mscorefonts-installer \
                                   gnome-themes-standard gtk2-engines-pixbuf \
                                   konsole yakuake \
                                   dolphin dolphin-plugins \
                                   synaptic software-properties-kde \
                                   qapt-utils qapt-deb-installer \
                                   gtkorphan;

# Verifications
$(which konsole) --version;
$(which yakuake) --version;
$(which dolphin) --version;
#$(which synaptic) --version;
#$(which software-properties-kde) --version;
$(which qapt-deb-installer) --version;
#$(which gtkorphan) --version;

