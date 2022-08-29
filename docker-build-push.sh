#!/bin/bash
export version=$(cat package.json | jq .version -r)-custom-$TRAVIS_COMMIT
echo $version
docker build . --tag yukimir/jinrou:$version
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push yukimir/jinrou:$version
