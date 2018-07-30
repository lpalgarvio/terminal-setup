#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kdiff3 komparator kompare \
                                   kate \
                                   xmlcopyeditor \
                                   okteta \
                                   gtkhash \
                                   klinkstatus;

# Remove software
sudo apt-get remove --purge -y kommander kdevelop kdewebdev;

# Verifications
$(which kdiff3) --version;
$(which komparator) --version;
$(which kompare) --version;
$(which kate) --version;
$(which xmlcopyeditor) --version;
$(which okteta) --version;
$(which gtkhash) --version;
$(which klinkstatus) --version;

