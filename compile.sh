#!/bin/bash
cd /home/nik-kst/Android/sony/SONY_PINE_8_1
rm -rf /home/nik-kst/Android/sony/SONY_PINE_8_1/out
mkdir /home/nik-kst/Android/sony/SONY_PINE_8_1/out

export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/nik-kst/Android/t-alps-release-o1.mp1-V2.86/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make clean
make mrproper
make O=out TARGET_ARCH=arm64 pine_nik_defconfig
make -j8 O=out TARGET_ARCH=arm64 2>&1 | tee out/build.log
