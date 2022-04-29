#!/bin/sh
# Example: ./build-ci.sh develop
wget -c https://github.com/daison12006013/lucid/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf lucid/
mv lucid-$1 lucid
docker build . --file Dockerfile --tag my-image-name:$(date +%s)
