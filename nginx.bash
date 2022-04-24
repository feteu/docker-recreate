docker run \
    --detach \
    --name "nginx" \
    --network "docker-recreate" \
    --publish "127.0.0.1:8888:8888" \
    --volume "$(pwd)/nginx/:/etc/nginx/conf.d:ro" \
    nginx:latest
    