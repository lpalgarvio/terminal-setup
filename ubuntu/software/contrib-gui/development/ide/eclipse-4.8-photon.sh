#!/bin/bash
# https://www.eclipse.org/downloads/eclipse-packages/

# Install software
wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/oomph/epp/photon/R/eclipse-inst-linux64.tar.gz -P /tmp/;
sudo mkdir -p /opt/eclipse/photon;
sudo chown -R $USER:$USER /opt/eclipse;
rm -Rf /opt/eclipse/photon/eclipse-installer;
tar -xzf /tmp/eclipse-inst-linux64.tar.gz -C /opt/eclipse/photon;
rm -f /tmp/eclipse-inst-linux64.tar.gz;

# Run installer
/opt/eclipse/photon/eclipse-installer/eclipse-inst;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-php-photon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse PHP Photon
Comment=Eclipse PHP Photon IDE
Icon=/opt/eclipse/photon/php-photon/eclipse/icon.xpm
Exec="/opt/eclipse/photon/php-photon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-javascript-photon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Javascript Photon
Comment=Eclipse Javascript Photon IDE
Icon=/opt/eclipse/photon/javascript-photon/eclipse/icon.xpm
Exec="/opt/eclipse/photon/javascript-photon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-java-photon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Java Photon
Comment=Eclipse Java Photon IDE
Icon=/opt/eclipse/photon/java-photon/eclipse/icon.xpm
Exec="/opt/eclipse/photon/java-photon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-android-photon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Android Photon
Comment=Eclipse Android Photon IDE
Icon=/opt/eclipse/photon/android-photon/eclipse/icon.xpm
Exec="/opt/eclipse/photon/android-photon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-cpp-photon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse C++ Photon
Comment=Eclipse C++ Photon IDE
Icon=/opt/eclipse/photon/cpp-photon/eclipse/icon.xpm
Exec="/opt/eclipse/photon/cpp-photon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/eclipse;

