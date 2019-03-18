#!/bin/bash

# Install software
sudo apt-get install -y firefox \
                                   firefox-locale-en firefox-locale-pt;

# Verifications
$(which firefox) --version;

