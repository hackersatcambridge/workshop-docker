# Example 2
[< Go Back](../README.md)

## Defining an image

Docker images are templates for containers. A Dockerfile script contains the commands to build the image, just like how a shell script automates day-to-day tasks.

Let's take a look at [example2/Dockerfile](Dockerfile).

```


  <empty file>


```

A clean slate is always a great starting point. 

We want to have the image print `Hello World.` when run. Here are some useful Dockerfile commands:

| Command | Arguments                                      | Description               |
|---------|------------------------------------------------|---------------------------|
| FROM    | `<image name>`                                 | Base image for this image |
| CMD     | `<shell-command | array-of-command-arguments>` | Command to be run         |

## Building the image

```console
$ docker build --rm --tag workshop-docker/example2 --file Dockerfile .
```

## Running the image

```console
$ docker run -it --rm workshop-docker/example2
```

[< Go Back](../README.md) | [Solution](../solution2/)
