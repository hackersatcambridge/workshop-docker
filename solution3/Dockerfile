FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
	gdc \
	make && \
	rm -rf /var/lib/apt/lists

WORKDIR /tmp/src
