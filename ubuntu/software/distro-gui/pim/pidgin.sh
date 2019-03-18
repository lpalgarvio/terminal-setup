#!/bin/bash

# Install software
sudo apt-get install -y pidgin pidgin-data \
                                    pidgin-encryption \
                                    pidgin-sipe;

# Verifications
$(which pidgin) --version;

