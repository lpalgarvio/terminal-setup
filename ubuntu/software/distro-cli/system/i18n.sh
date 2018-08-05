#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y menu-l10n \
                                   aspell \
                                   hunspell;

# Install software (English)
sudo apt-get install -y aspell-en \
                                   hunspell-en-gb hunspell-en-us \
                                   hyphen-en-gb hyphen-en-us \
                                   mythes-en-us \
                                   ibritish iamerican \
                                   wbritish wamerican \
                                   hyphen-en-gb  hyphen-en-us;

# Install software (French)
sudo apt-get install -y aspell-fr \
                                   hunspell-fr \
                                   hyphen-fr \
                                   mythes-fr \
                                   ifrench-gut \
                                   wfrench;

# Install software (Italian)
sudo apt-get install -y aspell-it \
                                   hunspell-it \
                                   hyphen-it \
                                   mythes-it \
                                   iitalian \
                                   witalian;

# Install software (Spanish)
sudo apt-get install -y aspell-es \
                                   hunspell-es \
                                   hyphen-es \
                                   mythes-es \
                                   ispanish \
                                   wspanish;

# Install software (Portuguese)
sudo apt-get install -y aspell-pt-pt aspell-pt-br \
                                   hunspell-pt-pt hunspell-pt-br \
                                   hyphen-pt-pt hyphen-pt-br \
                                   mythes-pt-pt \
                                   iportuguese ibrazilian \
                                   wportuguese wbrazilian;

# Verifications
$(which aspell) --version;
$(which hunspell) --version;

