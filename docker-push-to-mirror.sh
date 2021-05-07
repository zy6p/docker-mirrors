#!/usr/bin/env bash

IMAGE_NAME=$1
MIRROR_NAME=$2
function push_to_docker(){
  IMAGE=$1
  MIRROR_NAME=$2
  TAG=${IMAGE#*:}
  echo $IMAGE $MIRROR_NAME:$TAG
  docker pull $IMAGE
  docker tag $IMAGE $MIRROR_NAME:$TAG
  docker push $MIRROR_NAME:$TAG
  docker image rm $MIRROR_NAME:$TAG
}
export -f push_to_docker
echo $IMAGE_NAME $MIRROR_NAME
./docker-tags.sh $IMAGE_NAME | xargs -I {} bash -c "push_to_docker '{}' $MIRROR_NAME"
