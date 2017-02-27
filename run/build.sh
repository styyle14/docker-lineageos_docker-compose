#!/bin/bash

set -x
set -e

repo init -u https://github.com/LineageOS/android.git -b cm-14.1
repo sync
source build/envsetup.sh
breakfast klteusc
cd ~/android/system/device/samsung/klteusc
./extract-files.sh
croot
brunch klteusc
cd "$OUT"
ls -l

