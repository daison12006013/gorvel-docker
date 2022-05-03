#!/bin/sh
# Example: ./build-local.sh develop
wget -c https://github.com/lucidfy/lucid/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf lucid/
mv lucid-$1 lucid

wget -c https://github.com/lucidfy/ui/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf ui/
mv ui-$1 ui

wget -c https://github.com/lucidfy/setup/archive/refs/heads/$1.tar.gz -O - | tar -xz
rm -rf $1.tar.gz
rm -rf setup/
mv setup-$1 setup

docker image rm -f daison12006013/lucid
docker build -t daison12006013/lucid .
docker push daison12006013/lucid:latest

# delete the folders again
rm -rf lucid/
rm -rf ui/
rm -rf setup/
