#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y e2fsprogs \
                                   btrfs-tools \
                                   xfsprogs xfsdump \
                                   reiserfsprogs \
                                   hfsplus hfsprogs hfsutils \
                                   f2fs-tools \
                                   mtools \
                                   exfat-utils \
                                   ntfs-config \
                                   aufs-tools;

