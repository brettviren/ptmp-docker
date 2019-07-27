#!/bin/bash

git clone --depth 1 https://github.com/brettviren/ptmp.git
cd ptmp
python3 ./tools/waf configure --prefix=$HOME
python3 ./tools/waf --notests install
python3 ./tools/waf --alltests -j1
python3 ./tools/waf clean



