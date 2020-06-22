#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade    
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig && mkdir build && cd build
cmake ..
make -j$(nproc)
cd ..
cd ..
sudo ./scripts/enable_1gb_pages.sh
sudo ./scripts/randomx_boost.sh

