#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y util-linux \
                                   gdisk \
                                   gnu-fdisk \
                                   gpart \
                                   parted \
                                   clonezilla \
                                   drbl \
                                   partimage partclone;

# Verifications
$(which fdisk) --version;
#$(which gdisk) --version;
$(which sgdisk) --version;
$(which gpart) -V;
$(which parted) --version;
#$(which clonezilla) --version;
$(which partimage) --version;
$(which partclone.imager) --version;

