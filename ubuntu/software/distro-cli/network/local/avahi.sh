#!/bin/bash

# Install software
sudo apt-get install -y avahi-autoipd avahi-utils;

# Verifications
$(which avahi-autoipd) --version;

