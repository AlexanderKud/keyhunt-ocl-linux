#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install opencl-headers ocl-icd-opencl-dev -y
cd lib
wget https://www.openssl.org/source/openssl-1.0.2l.tar.gz --no-check-certificate
tar -xzvf openssl-1.0.2l.tar.gz
cd openssl-1.0.2l
./config
make
cd ../..
mkdir _build
cd _build
cmake ..
cmake --build .
cd ..
