#!/bin/bash
# https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/
# https://docs.docker.com/engine/swarm/swarm-tutorial/add-nodes/

# li670-112
docker swarm init --listen-addr 192.168.132.188:2377 --advertise-addr 192.168.132.188;

# li145-248
docker swarm join --token SWMTKN-1-4py0clg3likuzpq6py6eevyxueg058zl0wd05jwm0w8qf8d90b-4x302833dtu7bkwueym1nniv6 192.168.132.188:2377

# li148-108
docker swarm join --token SWMTKN-1-4py0clg3likuzpq6py6eevyxueg058zl0wd05jwm0w8qf8d90b-4x302833dtu7bkwueym1nniv6 192.168.132.188:2377

