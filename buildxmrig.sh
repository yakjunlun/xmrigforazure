#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade    
sudo apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git

cd xmrig && cd src && ls
rm ./donate.h
wget https://raw.githubusercontent.com/yakjunlun/xmrigforazure/master/donate.h
cd ..
sudo ./scripts/enable_1gb_pages.sh
sudo ./scripts/randomx_boost.sh
mkdir build && cd build
cmake ..
make -j$(nproc)

wget https://raw.githubusercontent.com/yakjunlun/xmrigforazure/master/config.json

./xmrig