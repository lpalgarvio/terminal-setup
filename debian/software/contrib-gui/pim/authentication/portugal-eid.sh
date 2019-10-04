#!/bin/bash
# https://www.autenticacao.gov.pt/cc-software

# Install dependencies
sudo apt-get install -y libxml-security-c17v5 pcscd pcsc-tools libccid;

# Install software (plugin)
wget https://autenticacao.gov.pt/fa/ajuda/software/plugin-autenticacao-gov.deb -P /tmp/ -O /tmp/plugin-autenticacao-gov.deb;
sudo dpkg -i /tmp/plugin-autenticacao-gov.deb;
rm -f /tmp/plugin-autenticacao-gov.deb;

