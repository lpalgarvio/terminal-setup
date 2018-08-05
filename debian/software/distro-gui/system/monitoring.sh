#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kinfocenter \
                                   ksysguard \
                                   ksystemlog \
                                   k4dirstat \
                                   kfilereplace \
                                   krename;

# Verifications
$(which kinfocenter) --version;
$(which ksysguard) --version;
$(which ksystemlog) --version;
$(which k4dirstat) --version;
$(which kfilereplace) --version;
$(which krename) --version;

