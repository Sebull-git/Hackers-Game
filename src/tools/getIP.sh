#!/usr/bin/bash
list=$(docker ps --format "{{.Names}}")

while IFS= read -r line; do
    ip=$(docker inspect $line | gron | grep -v NetworkSettings.Networks.bridge.IPAddress | grep NetworkSettings.Networks | grep IPAddress| cut -d "=" -f2 | cut -d '"' -f2)
    echo "$line:$ip"
done <<< "$list"
