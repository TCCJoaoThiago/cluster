#!/bin/bash

SOURCE_ENV="source /pasta/home/bin/cluster_env;"

ssh maquina_zookeper "$SOURCE_ENV zookeeper-server-start.sh -daemon $CLUSTER_HOME/kafka/config/zookeeper.properties"

sleep 5

for hostname in {maquina_worker_1,maquina_worker_2}; do
	ssh $hostname "$SOURCE_ENV kafka-server-start.sh -daemon $CLUSTER_HOME/kafka/kafka-$hostname/config/server.properties"
done

sleep 1
zookeeper-shell.sh maquina_zookeper:2181 ls /brokers/ids
zookeeper-shell.sh maquina_zookeper:2181 ls /brokers/topics
