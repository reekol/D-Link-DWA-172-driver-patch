#!/bin/bash

sudo apt-get install git build-essential linux-headers-generic
git clone https://github.com/abperiasamy/rtl8812AU_8821AU_linux.git
cp D-Link-DWA-172.patch ./rtl8812au
cd rtl8812au
git apply D-Link-DWA-172.patch
make
sudo make install
sudo modprobe 8812au
