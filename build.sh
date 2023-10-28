#!/bin/bash

git submodule init
git submodule update

./emsdk/emsdk install latest
./emsdk/emsdk activate latest

cd jqkungfu

git submodule init
git submodule update

git apply ../compile.sh.patch

source ../emsdk/emsdk_env.sh
bash ./compile.sh
