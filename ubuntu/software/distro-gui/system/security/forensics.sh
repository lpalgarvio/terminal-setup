#!/bin/bash

# Install software
sudo apt-get install -y autopsy \
                                   bleachbit sweeper;

# Verifications
$(which autopsy) -h;
$(which bleachbit) --version;
$(which sweeper) --version;

