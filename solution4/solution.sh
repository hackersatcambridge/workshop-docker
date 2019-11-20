#!/bin/bash

docker build \
	--rm \
	--build-arg USER_NAME=`whoami` \
	--build-arg USER_UID=`id -u` \
	--build-arg USER_GID=`id -g` \
	-t workshop-docker/example4 \
	.

docker run \
	-it \
	-p 8888:8888 \
	-u `id -u`:`id -g` \
	-v `pwd`/notebooks:/tmp/notebooks \
	--rm \
	workshop-docker/example4

