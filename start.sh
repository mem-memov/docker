#!/bin/bash

# chmod +x start.sh

echo "--------- WEB SERVICE -----------"
sudo docker swarm init || true
sudo docker stack deploy --prune --compose-file=docker-compose.yml web_stack
