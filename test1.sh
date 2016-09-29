#!/bin/bash
ssg=$(docker logs $(docker ps -q --filter "ancestor=caapim/gateway") 2>&1 | grep "apim-provisioning: INFO: waiting for the shutdown file")

while [ "$ssg" != "spim-provisioning: INFO: waiting for the shutdown file at \"/userdata/shutdown\" to be created" ]; do
    echo "waiting for APIM Gateway to start"    
    ssg=$(docker logs $(docker ps -q --filter "ancestor=caapim/gateway") 2>&1 | grep "apim-provisioning: INFO: waiting for the shutdown file")
    sleep 5
done
echo $ssg

