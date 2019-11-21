# Example 4
[< Go Back](../README.md)

## Jupyter + TensorFlow in Docker

Jupyter and TensorFlow are mainstays of the machine-learning and data analytics world.

Let's define a Jupyter image with TensorFlow support.

| Command | Arguments                   | Description                                          |
|---------|-----------------------------|------------------------------------------------------|
| FROM    | `<image name>`              | Base image for this image                            |
| RUN     | `<shell-command>`           | Run this command when building the image             |
| WORKDIR | `<directory>`               | Set the current working directory                    |
| ARG     | `<name>[=optional-default]` | Set build argument `ARG notebook_dir=/tmp/notebooks` |
| ENV     | `<name>[=optional-default]` | Set environment variable                             |
| CMD     | `<shell-command>`           | Run this command when starting the container         |

Complete the Dockerfile skeleton with the necessary packages and their dependencies:
- apt-get: `python3`, `python3-pip`
- pip: `jupyterlab`, `pandas`, `pymysql`, `tensorflow`

Set up the image `CMD` to launch jupyter when the container starts.
```Dockerfile
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser"]
```

## Building the image

We will build the image with the current user's UID and GID
```console
$ docker build \
	--rm \
	--build-arg USER_NAME=`whoami` \
	--build-arg USER_UID=`id -u` \
	--build-arg USER_GID=`id -g` \
	-t workshop-docker/example4 \
	.
```

## Running the image

Complete the command below:
1. Publish the container port `8888` to the host port `8888`.
1. Bind-mount the `./notebooks` directory to the container's `/tmp/notebooks` directory.

Run the container and try accessing the jupyter notebook from within.

```console
$ docker run \
	-it \
	-p <container-port>:<host-port> \
	-u `id -u`:`id -g` \
	-v <host-directory>:<container-directory> \
	--rm \
	workshop-docker/example4
```

[< Go Back](../README.md) | [Solution](../solution4/)
