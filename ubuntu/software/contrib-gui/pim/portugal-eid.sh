#!/bin/bash
# https://www.autenticacao.gov.pt/cc-software

# Install dependencies
sudo apt-get install -y libxml-security-c17v5 pcscd pcsc-tools libccid;

# Install software (old)
#wget https://svn.gov.pt/projects/ccidadao/repository/middleware-offline/tags/builds/lastversion/pteid-mw_ubuntu16_amd64.deb -P /tmp/;
#sudo dpkg -i /tmp/pteid-mw_ubuntu16_amd64.deb;
#rm -f /tmp/pteid-mw_ubuntu16_amd64.deb;

# Install software (new)
wget https://www.autenticacao.gov.pt/documents/10179/11962/pteid-mw_ubuntu16_amd64.deb -P /tmp/ -O /tmp/pteid-mw_ubuntu16_amd64.deb;
sudo dpkg -i /tmp/pteid-mw_ubuntu16_amd64.deb;
rm -f /tmp/pteid-mw_ubuntu16_amd64.deb;

# Install software (plugin)
wget https://autenticacao.gov.pt/fa/ajuda/software/plugin-autenticacao-gov.deb -P /tmp/ -O /tmp/plugin-autenticacao-gov.deb;
sudo dpkg -i /tmp/plugin-autenticacao-gov.deb;
rm -f /tmp/plugin-autenticacao-gov.deb;

