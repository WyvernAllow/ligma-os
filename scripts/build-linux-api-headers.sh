#!/bin/bash
cd $LFS/sources
pv linux-6.7.4.tar.xz | tar -xJ
cd linux-6.7.4

echo "Building kernel headers..."

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr