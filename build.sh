#!/bin/sh
# Example: ./build.sh develop
wget -c https://github.com/daison12006013/gorvel/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf gorvel/
mv gorvel-$1 gorvel
docker image rm -f daison12006013/gorvel
docker build -t daison12006013/gorvel .
docker push daison12006013/gorvel:latest
