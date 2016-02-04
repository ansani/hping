#!/bin/bash

source ./cc.sh
./configure $CONFIGANDROID --no-tcl
cd libpcap
./configure $CONFIGANDROID --with-pcap=linux
make
cd ../android-shmem
git submodule update --init libancillary
$CC -c *.c -I libancillary -I . -U __ANDROID__
$AR rcs libshmem.a *.o
cd ..
$STRIP hping3
