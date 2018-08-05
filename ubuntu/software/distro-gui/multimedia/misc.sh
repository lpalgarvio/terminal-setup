#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y pulseaudio-module-x11 pulseaudio-utils \
                                   phonon \
                                   phonon-backend-gstreamer gstreamer-qapt \
                                   kde-config-cddb kio-audiocd kio-mtp \
                                   ffmpegthumbs mediainfo-gui \
                                   paman pavucontrol paprefs \
                                   kmix soundkonverter;

# Remove software
sudo apt-get remove --purge -y juk kscd;

# Verifications
$(which mediainfo) --version;

