#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kinfocenter \
                                   ksysguard \
                                   ksystemlog \
                                   kdf \
                                   filelight \
                                   k4dirstat;

# Verifications
$(which kinfocenter) --version;
$(which ksysguard) --version;
$(which ksystemlog) --version;
$(which kdf) --version;
$(which filelight) --version;
$(which k4dirstat) --version;

