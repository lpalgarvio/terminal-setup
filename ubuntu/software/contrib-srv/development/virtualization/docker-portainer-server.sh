#!/bin/bash
# https://portainer.io/install.html

# Remove container
docker container stop portainer;
docker container rm portainer;

# Remove volume
docker volume rm portainer_data;

# Create volume
docker volume create portainer_data;

# Create container
docker run \
    --tty \
    --interactive \
    --detach \
    --restart=always \
    --name portainer \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume portainer_data:/data \
    --publish 9999:9000 \
    portainer/portainer

