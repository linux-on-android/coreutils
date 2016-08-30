#!/bin/bash
CROSS_COMPILE="$1"
./configure --host="${CROSS_COMPILE}" --target="${CROSS_COMPILE}" --prefix="$PWD/${CROSS_COMPILE}-coreutils" --enable-single-binary=symlinks --enable-no-install-program=stdbuf --without-selinux --without-gmp --with-gnu-ld CFLAGS='-static -O2 -fPIE' LDFLAGS='-static -O2 -fPIE
