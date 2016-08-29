#!/bin/bash
CROSS_COMPILE="$1"
./configure --host="${CROSS_COMPILE}" --prefix="$PWD/${CROSS_COMPILE}-coreutils" --enable-no-install-program=stdbuf CFLAGS='-static -O2 -pie' LDFLAGS='-static -O2 -pie'
