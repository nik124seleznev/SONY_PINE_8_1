#!/bin/bash
cd /home/nik-kst/Android/sony/kernel-3.18
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/nik-kst/Android/t-alps-release-o1.mp1-V2.86/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make O=out TARGET_ARCH=arm64 pine_nik_defconfig
make -j1 O=out TARGET_ARCH=arm64 | tee out/build.log
