#!/bin/bash

# Install software
sudo apt-get install -y sudo xterm \
                                   apt apt-file aptitude \
                                   debconf debconf-i18n \
                                   deborphan dselect \
                                   popularity-contest;

# Verifications
$(which sudo) --version;
$(which apt) --version;
#$(which apt-file) --version;
$(which aptitude) --version;
$(which deborphan) --version;

