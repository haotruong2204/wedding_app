# README

# Docker Network

docker network create wedding_app

# NGINX+LetsEncrypt

```shell
docker-compose build
docker-compose up -d
docker-compose stop
docker-compose start
```

# Run app wedding Rails

```shell
docker build -t app ./wedding/.
docker volume create app-storage
docker run -d --rm -it --name wedding --env-file ./wedding/.env -v app-storage:/rails/storage --network wedding_app app
```

# Postgres

```shell
mkdir psql/postgres-data
docker build -t psql ./psql/.
docker run -d --name postgres --env-file ./psql/.env -v postgres-data:/var/lib/postgresql/data --network wedding_app psql
```
