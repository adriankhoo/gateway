#!/bin/sh
URL="https://raw.githubusercontent.com/fukatechnologies/gateway/master/rpi/installme.sh"
rmdir -r fuka
mkdir fuka
cd fuka
curl -k $URL -o runme.sh
sh runme.sh
