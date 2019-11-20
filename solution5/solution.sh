#!/bin/bash
docker rm workshop-docker_example5
docker volume rm workshop-docker-mysqldata

docker run \
	-d \
	--env MYSQL_ALLOW_EMPTY_PASSWORD=true \
	--env MYSQL_NO_ROOT_PASSWORD=true \
	--env MYSQL_RANDOM_ROOT_PASSWORD="" \
	--name workshop-docker_example5 \
	--volume `pwd`/data.sql:/tmp/data.sql \
	--volume workshop-docker-mysqldata:/var/lib/mysql \
	mysql/mysql-server

echo "Waiting for MySQL server to start up"
until docker logs workshop-docker_example5 2>&1 | grep "port: 33060" ; do
	sleep 1
done

docker exec -it workshop-docker_example5 bash -c "cat /tmp/data.sql | mysql"

docker stop workshop-docker_example5

