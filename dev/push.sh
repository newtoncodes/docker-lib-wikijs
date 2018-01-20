#!/usr/bin/env bash

version=$(curl -L -s -S https://beta.requarks.io/api/version/stable)

docker push newtoncodes/wikijs
docker push newtoncodes/wikijs:${version}
