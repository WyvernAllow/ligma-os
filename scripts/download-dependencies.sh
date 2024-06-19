#!/bin/bash

wget --input-file=$LFS/tools/wget-list-sysv.txt --continue --directory-prefix=$LFS/sources

pushd $LFS/sources
    md5sum -c $LFS/tools/md5sums.txt
popd