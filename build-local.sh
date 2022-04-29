#!/bin/sh
# Example: ./build-local.sh develop
wget -c https://github.com/daison12006013/lucid/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf lucid/
mv lucid-$1 lucid
docker image rm -f daison12006013/lucid
docker build -t daison12006013/lucid .
docker push daison12006013/lucid:latest
