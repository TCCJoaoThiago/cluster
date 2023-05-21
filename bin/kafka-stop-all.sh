#!/bin/bash

SOURCE_ENV="source /pasta/home/bin/cluster_env;"

for hostname in {maquina_worker_1,maquina_worker_2}; do
	ssh $hostname "$SOURCE_ENV kafka-server-stop.sh"
done

ssh maquina_zookeper "$SOURCE_ENV zookeeper-server-stop.sh"
