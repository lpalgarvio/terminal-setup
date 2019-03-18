#!/bin/bash

# Install software
sudo apt-get install -y thunderbird \
                                    thunderbird-locale-en thunderbird-locale-en-gb thunderbird-locale-pt;

# Verifications
$(which thunderbird) --version;

