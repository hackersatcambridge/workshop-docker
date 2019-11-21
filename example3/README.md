# Example 3
[< Go Back](../README.md)

## Build somebody else's code

There is a program in the `src/` directory, but it doesn't seem to be a well-known language.

Let's solve this problem by making a containerised build environment for it.

| Command | Arguments         | Description                              |
|---------|-------------------|------------------------------------------|
| FROM    | `<image name>`    | Base image for this image                |
| RUN     | `<shell-command>` | Run this command when building the image |
| WORKDIR | `<directory>`     | Set the current working directory        |

The GNU D Compiler (`gdc`) and Make (`make`) packages should come in handy here.

> We use this gadget to install packages from the repositories because:
> - the repository cache should not be shipped with the container;
> - build caching would optimise away the update step if the commands were split into separate `RUN` invocations.

```Dockerfile
RUN apt-get update && apt-get install -y \
	<package> \
	<package> && \
	rm -rf /var/lib/apt/lists
```

Set the current working directory to a sensible location for your source files (i.e. `/tmp/src`)

## Building the image

```console
$ docker build --rm -t workshop-docker/example3 .
```

## Running the image

Mount the source directory into the container and invoke `make all && ./example3`
```console
$ docker run \
	-it \
	--rm \
	--volume <host directory>:<container directory> \
	workshop-docker/example3 \
	bash -c "<command>"
```

[< Go Back](../README.md) | [Solution](../solution3/)
