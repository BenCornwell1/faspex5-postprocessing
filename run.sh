#!/bin/bash

docker run --name webhook \
	-v /opt/aspera/faspex/conf/scripts:/scripts \
	-v /root/keys:/keys \
	-p 9090:8080 \
    --network="faspex_container_network" \
	webhook-example

