#!/bin/bash

docker build \
	--rm \
	--tag workshop-docker/example2 \
	--file Dockerfile \
	.

docker run \
	-it \
	--rm \
	workshop-docker/example2

