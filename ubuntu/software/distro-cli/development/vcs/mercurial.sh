#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y mercurial mercurial-keyring \
                                   mercurial-git;

# Verifications
$(which hg) version;

