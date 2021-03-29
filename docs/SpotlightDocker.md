# Docker Containerization

TODO:

Docker Reference: https://docs.docker.com/engine/reference/builder/
Docker Compose Reference: https://docs.docker.com/compose/compose-file/

```shell script
docker-compose -f docker-compose.yml up -d
curl -X GET "localhost:9200/_cat/nodes?v&pretty"
#docker-compose -f docker-compose.yml down -v
#https://www.elastic.co/subscriptions
docker-compose -f create-certs.yml run --rm create_certs
docker-compose -f elastic-docker-tls.yml up -d
docker exec es01 /bin/bash -c "bin/elasticsearch-setup-passwords \
auto --batch \
-Expack.security.http.ssl.certificate=certificates/es01/es01.crt \
-Expack.security.http.ssl.certificate_authorities=certificates/ca/ca.crt \
-Expack.security.http.ssl.key=certificates/es01/es01.key \
--url https://es01:9200"
#Set ELASTICSEARCH_PASSWORD in the elastic-docker-tls.yml compose file to the password generated for the kibana user.
docker-compose -f elastic-docker-tls.yml up -d

```



reset all docker resourses: 
```shell script
docker system info # display docker info. Note amount of containers, images, volumes, networks, etc
docker stop $(docker ps -a -q) # stop all containers
docker rm $(docker ps -a -q) # remove all containers
#docker rmi $(docker images -a -q) # remove all images. WARNING: you shouldn't run this unless you're creating local images. It'll require you to re-download everything your images depend on
docker rm $(docker volume ls -q) # remove all volumes, note your compose files don't recreate these
docker rm $(docker network ls -q) # remove all networks, note your compose files don't recreate these
docker system prune -a # remove anything orphaned not removed earlier
docker system info # redisplay info and note changes from above's run of this command

```

```shell script
docker ps # to display containers, and name/id
docker exec -it <container_id> /bin/bash # to access containers

```