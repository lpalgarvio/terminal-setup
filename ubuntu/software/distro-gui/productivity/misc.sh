#!/bin/bash

# Install software
sudo apt-get install -y okular okular-extra-backends \
                                   dia dia-shapes;

# Verifications
$(which okular) --version;
$(which dia) --version;

