# database

install databases for development with docker-compose

- redis
- adminer
- mongodb:3
- postgres:14
- mysql:8
- elasticsearch:5
- elasticsearch:7
- elasticsearch:8

## getting started

```sh
docker-compose up -d
sh install-elasticsearch-plugins.sh
```

## clear

```sh
docker-compose down -v
```

## docker network config

```sh
vim /etc/docker/daemon.json 

```

```json
{
    "bip": "192.168.1.5/24",
    "default-address-pools": [
        {
            "base": "192.168.1.5/16",
            "size": 24
        }
    ] 
}
```
