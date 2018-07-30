#!/bin/bash
# http://kenfallon.com/checkpont-snx-on-ubuntu-14-04-lts-trusty-tahr/
# http://kenfallon.com/checkpoint-snx-install-instructions-for-major-linux-distributions/

# Install dependencies
# depends on java9-oracle
sudo apt-get install -y ia32-libs libstdc++5:i386 libstdc++6:i386 libpam0g:i386 libx11-6:i386 libnss3-tools;

# Install software

#wget "http://dl3.checkpoint.com/paid/fc/SNX_for_VPN1_Win7.tgz?HashKey=1503494723_4e231d9365c13da927fe829e6e654147&xtn=.tgz" -P /tmp/snx_download -O /tmp/snx_download/SNX_for_VPN1_Win7.tgz;
wget "http://dl3.checkpoint.com/paid/fc/SNX_for_VPN1_Win7.tgz?HashKey=1515675259_bec2152dbe75f3f74cb4847e5ebfbdc7&xtn=.tgz" -P /tmp/snx_download -O /tmp/snx_download/SNX_for_VPN1_Win7.tgz;
mkdir -p /tmp/snx_download;
tar -xvzf /tmp/snx_download/SNX_for_VPN1_Win7.tgz -C /tmp/snx_download/;
sudo chmod +x /tmp/snx_download/snx_install_linux30.sh;
sudo /tmp/snx_download/snx_install_linux30.sh;
sudo rm -Rf /tmp/snx_download;

$(which snx) -h;

