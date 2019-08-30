#!/bin/bash

echo "Hi lancelot user just wait and watch "

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=${PWD}/clang/bin/clang \
                      CROSS_COMPILE=${PWD}/gcc64/bin/aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=${PWD}/gcc32/bin/arm-linux-androideabi- \
                      CLANG_TRIPLE=${PWD}/clang/bin/aarch64-linux-gnu-
cd - || exit
