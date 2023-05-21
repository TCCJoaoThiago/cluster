#!/bin/bash

SOURCE_ENV="source /pasta/home/bin/cluster_env;";

ssh maquina_namenode "$SOURCE_ENV $HADOOP_BIN_HOME/sbin/start-all.sh";
