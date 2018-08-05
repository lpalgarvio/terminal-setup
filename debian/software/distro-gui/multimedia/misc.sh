#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y pulseaudio-module-x11 pulseaudio-utils \
                                   phonon phonon-backend-gstreamer phonon-backend-vlc \
                                   gstreamer-qapt kde-config-cddb kio-audiocd kio-mtp \
                                   ffmpegthumbs mediainfo-gui \
                                   kmix paman pavucontrol paprefs \
                                   soundkonverter amarok amarok-utils \
                                   vlc vlc-plugin-notify \
                                   acetoneiso isomaster \
                                   k3b k3b-i18n libk3b6-extracodecs;

# Remove software
sudo apt-get remove --purge -y juk kscd;

# Verifications
$(which mediainfo) --version;
$(which amarok) --version;
$(which vlc) --version;
$(which acetoneiso) -h;
$(which isomaster) --help;
$(which k3b) --version;

