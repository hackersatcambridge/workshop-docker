#!/bin/bash

docker build \
	--rm \
	-t workshop-docker/example3 \
	.

docker run \
	-it \
	--rm \
	--volume `pwd`/src:/tmp/src \
	workshop-docker/example3 \
	bash -c "make clean && make all && ./example3"
