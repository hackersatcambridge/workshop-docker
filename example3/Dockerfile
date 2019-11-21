FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
	<packages> \
	<packages> && \
	rm -rf /var/lib/apt/lists

WORKDIR /tmp/src
