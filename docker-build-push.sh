#!/bin/bash
export git_hash=$(git rev-parse --short "$GITHUB_SHA")
export version=$(cat package.json | jq .version -r)-custom-$git_hash
echo $version
docker build . --tag yukimir/jinrou:$version
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push yukimir/jinrou:$version
