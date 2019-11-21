# Example 1
[< Go Back](../README.md)

## Creating a container

Creating a docker container is like creating a virtual machine, but simpler.

```console
$ docker run --interactive --tty ubuntu:bionic
```
The docker container has a filesystem and a shell which behaves like any other linux environment.
```console
root@8cb04a117f04:/# uname -smr 
Linux 5.0.0-redacted x86_64

root@8cb04a117f04:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var

root@8cb04a117f04:/# exit
```

[< Go Back](../README.md)

## Useful commands

There's a more complete cheat sheet [here](https://github.com/wsargent/docker-cheat-sheet).

| Command                      | Description                           | Usage                                                                         |
|------------------------------|---------------------------------------|-------------------------------------------------------------------------------|
| `docker build`               | Build an image (template)             | `docker build --rm --tag <container-tag> --file <Dockerfile> <build-context>` |
| `docker run`                 | Create and run a container (instance) | `docker run --interactive --terminal --rm <container-tag>`                    |
| `docker container <command>` | Manage containers                     | Useful operations: `ps`, `ls`, `rm`                                           |
| `docker image <command>`     | Manage images                         |                                                                               |
| `docker network <command>`   | Manage networks                       |                                                                               |