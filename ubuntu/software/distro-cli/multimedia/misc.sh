#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y alsa-base alsa-utils \
                                   pulseaudio pulseaudio-module-bluetooth pulseaudio-module-droid pulseaudio-module-zeroconf \
                                   gstreamer-qapt gstreamer-tools \
                                   gstreamer0.10-alsa gstreamer0.10-pulseaudio gstreamer0.10-tools gstreamer0.10-x \
                                   gstreamer0.10-ffmpeg gstreamer0.10-plugins-good \
                                   gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-packagekit \
                                   gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly \
                                   ffmpeg mediainfo \
                                   vlc-nox vlc-plugin-samba \
                                   dvd+rw-tools fuseiso fuseiso9660;

# Verifications
$(which ffmpeg) -version;
$(which mediainfo) --version;
$(which vlc) --version;

