#!/bin/bash

# Install software
sudo apt-get install -y iw wpasuplicant hostapd bridge-utils;

# Verifications
$(which iw) --version;
$(which wpa_suplicant) -v;
$(which hostapd) --version;
$(which bridge-utils) --version;
