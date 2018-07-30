#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ksysguard \
                                   ksystemlog \
                                   k4dirstat \
                                   kfilereplace \
                                   krename;

# Verifications
$(which ksysguard) --version;
$(which ksystemlog) --version;
$(which k4dirstat) --version;
$(which kfilereplace) --version;
$(which krename) --version;

