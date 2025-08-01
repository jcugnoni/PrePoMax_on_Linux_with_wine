#!/usr/bin/env bash

echo "Running PrePoMax using Wine :"
#echo "basename: [$(basename "$0")]"
echo "app dirname : [$(dirname "$0")]"

echo "Change to app directory:"
cd $(dirname "$0")
echo "pwd     : [$(pwd)]"

#set location of Wine "prefix" = Windows files
export WINEPREFIX=`pwd`/pfx/
echo "Wine Prefix is : " $WINEPREFIX

#set number of threads for solver
export OMP_NUM_THREADS=20
echo "Number of threads: " $OMP_NUM_THREADS

# run PrePoMax
echo "Run WINE & PrePoMax"
./wine-staging*.AppImage PrePoMax/PrePoMax.exe
