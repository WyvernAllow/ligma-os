#!/bin/bash
cd $LFS/sources
pv linux-v0.1.0-alpha.tar.gz | tar -xzJ
cd linux-v0.1.0-alpha

echo "Building kernel headers..."

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr