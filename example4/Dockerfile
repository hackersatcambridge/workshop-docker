FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
	<packages> \
	<packages> \
	&& rm -rf /var/lib/apt/lists

RUN pip3 install \
	<packages>

# UID/GID permissions
ARG USER_NAME="jupyter"
ARG USER_UID=1000
ARG USER_GID=1000

RUN useradd -u $USER_UID -m $USER_NAME
RUN usermod -aG $USER_GID $USER_NAME
USER $USER_NAME

ARG notebook_dir=/tmp/notebooks

WORKDIR $notebook_dir
CMD <arguments>
