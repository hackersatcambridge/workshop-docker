# Example 5
[< Go Back](../README.md)

## Making a persistent data volume

Docker Hub offers a wide variety of pre-built images to help us build and deploy our dream applications.

We'll be using the pre-built MySQL image in this example.

## Pulling the image

Pull the `mysql/mysql-server` image from Docker Hub:
```console
$ docker pull mysql/mysql-server
```

## Running the image

Instantiate a container `mysql/mysql-server` with the image:
```console
$ docker run \
	-d \
	--env MYSQL_ALLOW_EMPTY_PASSWORD=true \
	--env MYSQL_NO_ROOT_PASSWORD=true \
	--env MYSQL_RANDOM_ROOT_PASSWORD="" \
	--name workshop-docker_example5 \
	--volume `pwd`/data.sql:/tmp/data.sql \
	--volume workshop-docker-mysqldata:/var/lib/mysql \
	mysql/mysql-server
```

## Populate the database

Run the SQL script to configure the database:

```console
$ docker exec -it workshop-docker_example5 bash -c "cat /tmp/data.sql | mysql"
```

## Cleaning up

We've just used a pre-built MySQL image to populate the database in our persistent data volume.

If you run `docker container ls -a` you'll see that the container is still running.

Shut down and remove this container:
```console
$ docker stop workshop-docker_example5
$ docker rm workshop-docker_example5
```

[< Go Back](../README.md) | [Solution](../solution5/)
