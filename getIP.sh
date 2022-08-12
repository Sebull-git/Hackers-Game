#!/usr/bin/bash
list=$(docker ps --format "{{.Names}}")

while IFS= read -r line; do
    ip=$(docker inspect $line | gron | grep NetworkSettings.Networks.bridge.IPAddress | cut -d "=" -f2 | cut -d '"' -f2)
    echo "$line:$ip"
done <<< "$list"
