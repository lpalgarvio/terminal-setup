#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y firefox \
                                   firefox-locale-en firefox-locale-pt;

# Verifications
$(which firefox) --version;

