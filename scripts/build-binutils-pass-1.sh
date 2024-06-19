#!/bin/bash
cd $LFS/sources
pv binutils-2.42.tar.xz | tar -xJ
cd binutils-2.42

mkdir -pv build
cd build

echo "Configuring binutils..."

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-default-hash-style=gnu

echo "Compiling binutils..."

make -j $(nproc)
make install