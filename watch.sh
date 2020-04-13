#!/bin/bash

# start containers
docker-compose up &

# watch for changes and restart
watchmedo shell-command \
    --patterns="*.py" \
    --recursive \
    --command="docker-compose restart -t 0 && docker-compose up" \
    .