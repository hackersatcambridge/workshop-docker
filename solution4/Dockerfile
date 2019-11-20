FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
	python3 \
	python3-pip \
	&& rm -rf /var/lib/apt/lists

RUN pip3 install \
	jupyterlab \
	pandas \
	pymysql \
	tensorflow

ARG USER_NAME="jupyter"
ARG USER_UID=1000
ARG USER_GID=1000

RUN useradd -u $USER_UID -m $USER_NAME
RUN usermod -aG $USER_GID $USER_NAME
USER $USER_NAME

ARG notebook_dir=/tmp/notebooks

WORKDIR $notebook_dir
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser"]
