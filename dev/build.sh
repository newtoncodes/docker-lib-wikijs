#!/usr/bin/env bash

dir=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
version=$(curl -L -s -S https://beta.requarks.io/api/version/stable)

cd ${dir}/../9.x && docker build --no-cache -t newtoncodes/wikijs .
cd ${dir}/../9.x && docker build --no-cache -t newtoncodes/wikijs:${version} .
