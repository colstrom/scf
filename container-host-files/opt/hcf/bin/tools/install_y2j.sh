#!/bin/bash
set -e
echo 'deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse' | sudo tee  /etc/apt/sources.list.d/backports.list
sudo apt-get update
sudo apt-get install -y jq/trusty-backports

docker run --rm wildducktheories/y2j y2j.sh installer /usr/local/bin | sudo bash
