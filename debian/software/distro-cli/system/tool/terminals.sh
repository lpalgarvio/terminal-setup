#!/bin/bash

# Install software
sudo apt-get install -y screen tmux byobu;

# Verifications
$(which screen) --version;
$(which tmux) -V;
$(which byobu) --version;

