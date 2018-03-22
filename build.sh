#!/bin/bash

echo -e "\033[0;32mBuild...\033[0m"

HUGO_VERSION=0.37.1
if ! [[ -e hugo_${HUGO_VERSION}_Linux-64bit.tar.gz ]]; then
  wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
fi
tar zxvf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz hugo
./hugo
