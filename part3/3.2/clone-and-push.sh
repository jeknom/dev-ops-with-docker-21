#!bin/bash

GIT_REPO=$1
DOCKER_REPO=$2
DOCKER_USER=$3
DOCKER_PASS=$4

git clone $GIT_REPO cloneandpush

cd cloneandpush

echo $DOCKER_PASS | docker login --username $DOCKER_USER --password-stdin
docker build . -t $DOCKER_REPO
docker push $DOCKER_REPO