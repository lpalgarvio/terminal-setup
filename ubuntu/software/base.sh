#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y command-not-found \
                                   grep sed \
                                   locate fdupes \
                                   tree di \
                                   nano vim vim-tiny \
                                   rsync;

# Verifications
$(which grep) --version;
$(which sed) --version;
$(which locate) --version;
$(which fdupes) --version;
$(which tree) --version;
$(which di) --version;
$(which nano) --version;
$(which vim) --version;
$(which rsync) --version;

