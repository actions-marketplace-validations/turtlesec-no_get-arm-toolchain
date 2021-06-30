#!/bin/bash
set -e

brew install --cask gcc-arm-embedded
echo "INSTALL_DIR=$(dirname `which arm-none-eabi-gcc`)" >> $GITHUB_ENV
