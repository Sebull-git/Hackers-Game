#!/usr/bin/bash
docker inspect $1 | gron | grep NetworkSettings.Networks.bridge.IPAddress | cut -d "=" -f2 | cut -d '"' -f2