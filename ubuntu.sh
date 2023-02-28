#!/bin/bash
set -e

sudo apt-get -y install gcc-arm-none-eabi
echo "INSTALL_DIR=$(dirname `which arm-none-eabi-gcc`)" >> $GITHUB_ENV
echo "VERSION=$(arm-none-eabi-gcc --version | head -n 1 )" >> $GITHUB_ENV
