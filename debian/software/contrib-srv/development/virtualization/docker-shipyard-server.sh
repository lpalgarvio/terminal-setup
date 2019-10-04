#!/bin/bash
# https://github.com/shipyard/shipyard

# Remove existing installation
docker stop shipyard-controller shipyard-swarm-agent shipyard-swarm-manager shipyard-proxy shipyard-certs shipyard-discovery shipyard-rethinkdb;
docker rm -f shipyard-controller shipyard-swarm-agent shipyard-swarm-manager shipyard-proxy shipyard-certs shipyard-discovery shipyard-rethinkdb;

# Install Shipyard
curl -sSL https://shipyard-project.com/deploy | bash -s;

# Remove Controller container
docker stop shipyard-controller;
docker rm shipyard-controller;

# Reinstall Controller container with custom settings
docker run \
    -ti \
    -d \
    --restart=always \
    --name shipyard-controller \
    --link shipyard-rethinkdb:rethinkdb \
    --link shipyard-swarm-manager:swarm \
    -p 9999:8080 \
    shipyard/shipyard:latest \
    server \
    -d tcp://swarm:3375;

