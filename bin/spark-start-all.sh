#!/bin/bash

SOURCE_ENV="source /pasta/home/bin/cluster_env;";

ssh maquina_master "$SOURCE_ENV $SPARK_BIN_HOME/sbin/start-all.sh"
