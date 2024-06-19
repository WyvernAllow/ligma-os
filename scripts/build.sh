#!/bin/bash
set -e
echo "Building..."

bash -e $LFS/tools/download-dependencies.sh
base -e $LFS/tools/prepare.sh