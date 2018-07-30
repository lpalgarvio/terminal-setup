#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y command-not-found \
                                   grep sed \
                                   nano vim vim-tiny \
                                   rsync \
                                   screen tmux byobu;

# Verifications
$(which grep) --version;
$(which sed) --version;
$(which nano) --version;
$(which vim) --version;
$(which rsync) --version;
$(which screen) --version;
$(which tmux) --version;
$(which byobu) --version;

