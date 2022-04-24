docker run \
    --detach \
    --name "app" \
    --network "docker-recreate" \
    --volume "$(pwd)/app-v2/:/usr/src/:ro" \
    python:latest \
    /bin/bash -c "python -m pip install flask && python /usr/src/app.py"