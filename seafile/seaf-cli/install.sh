#!/bin/bash

git clone https://github.com/haiwen/libsearpc.git
git clone https://github.com/haiwen/seafile
mkdir seaf-cli
export PREFIX=$PWD/seaf-cli
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="$PREFIX/bin:$PATH"
cd libsearpc
./autogen.sh
./configure --prefix=$PREFIX
make
sudo make install
cd ..
cd seafile
./autogen.sh
./configure --prefix=$PREFIX --disable-fuse
make
make install
cd ..
