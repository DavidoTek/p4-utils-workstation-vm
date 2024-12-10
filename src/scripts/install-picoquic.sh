#!/bin/bash

PICOTLS_COMMIT="89fe56f4d79200a5801a08ed3b6ac8322e01ccd5"
PICOQUIC_COMMIT="afed140ffc5ae36d87614b9b80c5a02251b50221"

sudo NEEDRESTART_MODE=a DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential pkgconf cmake libssl-dev

## PicoTLS
git clone https://github.com/h2o/picotls
cd picotls/
git checkout $PICOTLS_COMMIT

git submodule update --init

cmake .
make
make check

cd ..

echo "export PICOTLS_DIR=$PWD/picotls" >> ~/.bashrc

## PicoQUIC
git clone https://github.com/private-octopus/picoquic
cd picoquic/
git checkout $PICOQUIC_COMMIT

cmake .
make

cd ..

echo "export PICOQUIC_DIR=$PWD/picoquic" >> ~/.bashrc
