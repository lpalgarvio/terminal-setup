#!/bin/bash
# http://kenfallon.com/checkpont-snx-on-ubuntu-14-04-lts-trusty-tahr/
# http://kenfallon.com/checkpoint-snx-install-instructions-for-major-linux-distributions/
# https://gist.github.com/rkueny/301f7ead21ed2a0ee8bbe2d755bed90b
# https://unix.stackexchange.com/questions/450229/getting-checkpoint-vpn-ssl-network-extender-working-in-the-command-line
# https://github.com/schlatterbeck/snxvpn
# https://github.com/lpalgarvio/snxvpn

# Install dependencies (snx)
sudo apt-get -y install lib32z1 libstdc++5:i386 libstdc++6:i386 libpam0g:i386 libx11-6:i386 libnss3-tools;

# Install software (snx)
mkdir -p /tmp/snx_download;
wget "https://vpnportal.aktifbank.com.tr/SNX/INSTALL/snx_install.sh" -P /tmp/snx_download -O /tmp/snx_download/snx_install.sh;
#wget "http://dl3.checkpoint.com/paid/fc/SNX_for_VPN1_Win7.tgz?HashKey=1503494723_4e231d9365c13da927fe829e6e654147&xtn=.tgz" -P /tmp/snx_download -O /tmp/snx_download/SNX_for_VPN1_Win7.tgz;
#wget "http://dl3.checkpoint.com/paid/fc/SNX_for_VPN1_Win7.tgz?HashKey=1515675259_bec2152dbe75f3f74cb4847e5ebfbdc7&xtn=.tgz" -P /tmp/snx_download -O /tmp/snx_download/SNX_for_VPN1_Win7.tgz;
#tar -xvzf /tmp/snx_download/SNX_for_VPN1_Win7.tgz -C /tmp/snx_download/;
sudo chmod +x /tmp/snx_download/snx_install.sh;
sudo /tmp/snx_download/snx_install.sh;
sudo rm -Rf /tmp/snx_download;

# Install dependencies (snxvpn)
sudo apt-get -y install python-docutils python-bs4 python-crypto;
sudo pip2 install pytz;

# Install software (snxvpn)
sudo rm -Rf /opt/snxvpn /opt/releasetools;
sudo git clone https://github.com/lpalgarvio/snxvpn /opt/snxvpn;
sudo git clone https://git.code.sf.net/p/sfreleasetools/code /opt/releasetools;
sudo -H bash -c '(cd /opt/snxvpn; make; python2 setup.py install --prefix=/usr/local)';

$(which snx) -h;
$(which snxvpn) -h;

