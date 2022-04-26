#!/bin/sh
# Example: ./build-ci.sh develop
wget -c https://github.com/daison12006013/gorvel/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf gorvel/
mv gorvel-$1 gorvel
docker build . --file Dockerfile --tag my-image-name:$(date +%s)
