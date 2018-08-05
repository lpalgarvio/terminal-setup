#!/bin/bash
# https://support.displaylink.com/knowledgebase/articles/683482-displaylink-support-for-ubuntu-now-available
# http://www.displaylink.com/downloads/ubuntu
# http://support.displaylink.com/knowledgebase/articles/684649
# http://support.displaylink.com/knowledgebase/topics/103927-troubleshooting-ubuntu
# https://help.ubuntu.com/community/DisplayLink
# https://github.com/AdnanHodzic/displaylink-debian
# https://github.com/DisplayLink/evdi
#
# Disable Secure Boot !!!
#

# Install software
wget http://assets.displaylink.com/live/downloads/software/f1123_DisplayLink%20USB%20Graphics%20Software%20for%20Ubuntu%204.2.zip?AWSAccessKeyId=AKIAJHGQWPVXWHEDJUEA&Expires=1532622794&Signature=AG4YqE%2B9JxDZLfdcPDNndWZjXng%3D -P /tmp/;
unzip -q "/tmp/DisplayLink USB Graphics Software for Ubuntu 4.2.zip" -d /tmp/
chmod +x "/tmp/DisplayLink USB Graphics Software for Ubuntu 4.2/displaylink-driver-4.2.29.run";
sudo "/tmp/DisplayLink USB Graphics Software for Ubuntu 4.2/displaylink-driver-4.2.29.run";
rm -Rf "/tmp/DisplayLink USB Graphics Software for Ubuntu 4.2/";

# Configuration
sudo echo "udl" > /etc/modules-load.d/udl.conf;
sudo modprobe udl;
sudo displaylink-installer;

