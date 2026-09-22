#!/bin/bash
cd /openhd
git apply /openhd-builder/build.patch
cd OpenHD
git submodule update --init --recursive
./build_rk3588_cross.sh $@
