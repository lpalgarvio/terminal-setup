#!/bin/bash

# Install software
sudo apt-get install -y iw wpasupplicant hostapd;

# Verifications
$(which iw) --version;
$(which wpa_supplicant) -v;
$(which hostapd) -v;

