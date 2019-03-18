#!/bin/bash

# Install software
sudo apt-get install -y git git-man \
                                   git-flow git-sh git-extras \
                                   git-remote-bzr git-svn;

# Verifications
$(which git) version;

