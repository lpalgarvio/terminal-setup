#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y thunderbird \
                                    thunderbird-locale-en thunderbird-locale-en-gb thunderbird-locale-pt;

# Verifications
$(which thunderbird) --version;

