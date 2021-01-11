#!/bin/sh
URL="https://raw.githubusercontent.com/fukatechnologies/gateway/master/rpi/downloadAll.sh"
rm -r fuka
mkdir fuka

cd fuka
curl -kL $URL | bash -s 'dailyrun.sh' 'installme.sh'

chmod 755 *
source installme.sh
cd ..
rm -r fuka
