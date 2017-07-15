#!/bin/bash
sudo apt install git ibus libibus-1.0-dev automake autoconf gjs ibus-1.0 gir1.2-ibus-1.0
cd /tmp
git clone https://github.com/sarim/ibus-avro.git
cd ibus-avro
aclocal && autoconf && automake --add-missing
./configure --prefix=/usr
sudo make install
