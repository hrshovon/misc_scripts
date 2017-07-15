#!/bin/bash
sudo apt install git ibus libibus-1.0-dev automake autoconf gjs ibus-1.0 gir1.2-ibus-1.0
cd /tmp
git clone https://github.com/sarim/ibus-avro.git
cd ibus-avro
aclocal && autoconf && automake --add-missing
./configure --prefix=/usr
sudo make install

#Now, go to System>Preferences>Personal>Language Support (I am running Ubuntu Mate,So just find out where language support is for your distro)
#Select keyboard input method as iBus
#Save and exit
#Go to iBus Preferences (System>Preferences>Others>iBus Preferences) and select input method tab. There click Add>Bangla>Avro Phonetic.
#After that, click Add. You may have to select the three dots to get Bangla/Bengali.
#Restart your PC.
#Avro should be available at the top right corner. Click on EN and select Avro phonetic when needed. Enjoy!
