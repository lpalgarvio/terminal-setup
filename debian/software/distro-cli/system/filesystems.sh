#!/bin/bash

# Install software
sudo apt-get install -y e2fsprogs \
                                   btrfs-progs \
                                   xfsprogs xfsdump \
                                   reiserfsprogs \
                                   hfsplus hfsprogs hfsutils \
                                   f2fs-tools \
                                   mtools \
                                   exfat-utils \
                                   ntfs-3g ntfs-config \
                                   aufs-tools;

