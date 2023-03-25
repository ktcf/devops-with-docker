#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 github_repo docker_repo"
  exit 1
fi

git clone "https://github.com/$1.git"
cd "$(basename "$1" .git)"
docker build -t "$2" .
echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin
docker push "$2"