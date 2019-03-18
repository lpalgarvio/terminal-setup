#!/bin/bash

# Install software
sudo apt-get install -y gstreamer-qapt \
                                   pavucontrol paprefs \
                                   kde-config-cddb kio-audiocd \
                                   ffmpegthumbs mediainfo-gui \
                                   kmix;
#sudo apt-get install -y soundkonverter;

# Remove software
sudo apt-get remove --purge -y juk kscd;

# Verifications
$(which mediainfo) --version;

