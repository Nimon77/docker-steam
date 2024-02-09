#!/bin/bash
docker run \
  --rm \
  -it \
  --name steam \
  --shm-size 256M \
  --privileged \
  -p 8080:5800 \
  -p 5901:5900 \
  -v steam:/steam \
  -m 4g \
  steam
