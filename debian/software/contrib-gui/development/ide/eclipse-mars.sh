#!/bin/bash
# https://www.eclipse.org/downloads/eclipse-packages/

# Install software
wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/oomph/epp/mars/R/eclipse-inst-linux64.tar.gz -P /tmp/;
sudo mkdir -p /opt/eclipse/mars;
sudo chown -R $USER:$USER /opt/eclipse;
rm -Rf /opt/eclipse/mars/eclipse-installer;
tar -xzf /tmp/eclipse-inst-linux64.tar.gz -C /opt/eclipse/mars;
rm -f /tmp/eclipse-inst-linux64.tar.gz;

# Run installer
/opt/eclipse/mars/eclipse-installer/eclipse-inst;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-php-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse PHP Neon
Comment=Eclipse PHP Neon IDE
Icon=/opt/eclipse/php-mars/eclipse/icon.xpm
Exec="/opt/eclipse/php-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-javascript-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Javascript Neon
Comment=Eclipse Javascript Neon IDE
Icon=/opt/eclipse/javascript-mars/eclipse/icon.xpm
Exec="/opt/eclipse/javascript-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-android-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Android Neon
Comment=Eclipse Android Neon IDE
Icon=/opt/eclipse/android-mars/eclipse/icon.xpm
Exec="/opt/eclipse/android-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/eclipse;

