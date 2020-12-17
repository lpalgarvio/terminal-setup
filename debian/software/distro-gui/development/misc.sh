#!/bin/bash

# Install software
sudo apt-get install -y kompare \
                                   kate \
                                   xmlcopyeditor \
                                   okteta \
                                   gtkhash;
#sudo apt-get install -y meld diffuse;
#sudo apt-get install -y kdiff3 komparator \
#                                   klinkstatus;

# Remove software
sudo apt-get remove --purge -y kdevelop kdewebdev;

# Verifications
#$(which meld) --version;
#$(which diffuse) --version;
#$(which kdiff3) --version;
#$(which komparator4) --version;
$(which kompare) --version;
$(which kate) --version;
$(which xmlcopyeditor) --version;
$(which okteta) --version;
$(which gtkhash) --version;
#$(which klinkstatus) --version;

