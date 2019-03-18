#!/bin/bash

# Install software
sudo apt-get install -y alsa-base alsa-utils \
                                   pulseaudio pulseaudio-utils \
                                   pulseaudio-module-bluetooth pulseaudio-module-zeroconf \
                                   gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-libav gstreamer1.0-x \
                                   gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly \
                                   gstreamer1.0-tools \
                                   ffmpeg mediainfo \
                                   flac vorbis-tools wavpack;

# Verifications
$(which ffmpeg) -version;
$(which mediainfo) --version;

