#!/bin/bash

if [ "$MODE" = "online" ]; then
  echo "Mode is online"
  cd /app/rosetta-aleo-test
  pm2-runtime ./start_online.json
else
  echo "Mode is offline"
  cd /app/rosetta-aleo-test
  pm2-runtime ./start_online.json # TODO: change to offline when it's ready
fi
