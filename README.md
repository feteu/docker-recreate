# docker-recreate

### Setup of docker environment

```bash
docker network create docker-recreate
docker network create -d overlay --attachable docker-recreate
docker pull nginx:latest
docker pull python:latest
```

### Logfile tailing

```bash
docker logs nginx -f | tee /tmp/$(date +%s)_nginx.out
```

### Remove a container

```bash
docker container rm app -f
docker container rm nginx -f
```