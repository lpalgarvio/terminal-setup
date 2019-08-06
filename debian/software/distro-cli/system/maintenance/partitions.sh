#!/bin/bash

# Install software
sudo apt-get install -y util-linux \
                                   #fdisk \
                                   gdisk \
                                   parted \
                                   gpart \
                                   clonezilla \
                                   drbl \
                                   partimage partclone;

# Verifications
$(which fdisk) --version;
#$(which gdisk) --version;
$(which sgdisk) --version;
$(which parted) --version;
$(which gpart) -V;
#$(which clonezilla) --version;
$(which partimage) --version;
$(which partclone.info) -version;

