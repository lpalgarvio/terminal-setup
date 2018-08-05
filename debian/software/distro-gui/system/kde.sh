#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kde-config-systemd \
                                   kde-config-cron \
                                   kde-config-baloo-advanced \
                                   kde-config-qt-graphicssystem \
                                   kde-config-gtk-style \
                                   colord-kde \
                                   kalternatives \
                                   kdeartwork kdeartwork-wallpapers kde-wallpapers \
                                   plasma-widgets-addons plasma-widget-weatherforecast \
                                   kde-service-menu-fuseiso kde-thumbnailer-deb \
                                   kdesudo \
                                   kuser \
                                   ufw-kde;

# Verifications
$(which kdesudo) --version;
$(which kuser) --version;
$(which ufw-kde) --version;

