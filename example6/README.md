# Example 6
[< Go Back](../README.md)

## Compose a data analytics app

Docker compose lets us define a deploy a multi-container app very easily.

## Define the application
Complete the [`docker-compose.yaml`](./docker-compose.yaml) configuration file:
- Link the `mysql` service container to the `jupyter` service container;
- Mount the data volume `workshop-docker-mysqldata` to the mount-point `/var/lib/mysql`.

```yaml
version: '3'

# Containers to be instantiated in environment
services:
  jupyter:
    image: workshop-docker/example4
    ports:
      - "8888:8888"
    volumes:
      - ./notebooks:/tmp/notebooks
    links:
      - <mysql-container-service-name>
  mysql:
    image: mysql/mysql-server
    volumes:
      - <data-volume>:<mount-point>

# External volumes for the declared services
volumes:
  workshop-docker-mysqldata:
    external:
      name: workshop-docker-mysqldata
```

## Run the application

Now that you've done all the hard work of defining images and containers, running everything is easy!
```console
$ docker-compose up
```

## Cleaning up

Shutting the application down is equally easy:
```console
$ docker-compose down
```

[< Go Back](../README.md) | [Solution](../solution6/)
