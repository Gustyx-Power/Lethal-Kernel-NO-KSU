#!/bin/sh

# Basic build function
BUILD_START=$(date +"%s")
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'

# Cleanup
rm -rf out/outputs/*

./compile-beryllium.sh
./compile-dipper.sh

BUILD_END=$(date +"%s")
DIFF=$(($BUILD_END - $BUILD_START))
echo -e "$yellow Full build completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds.$nocol"
