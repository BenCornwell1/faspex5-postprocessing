
docker run -d --name webhook \
	-v /opt/aspera/faspex/conf/scripts:/scripts \
	-p 8080:8080 \
    --network="faspex_container_network" \
	webhook-example

