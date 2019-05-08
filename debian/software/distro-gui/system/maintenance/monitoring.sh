#!/bin/bash

# Install software
sudo apt-get install -y kinfocenter \
                                   hardinfo lshw-gtk \
                                   ksysguard ksystemlog \
                                   kdf filelight k4dirstat;

# Verifications
$(which kinfocenter) --version;
$(which hardinfo) --version;
#$(which lshw-gtk) --version;
$(which ksysguard) --version;
$(which ksystemlog) --version;
$(which kdf) --version;
$(which filelight) --version;
$(which k4dirstat) --version;

