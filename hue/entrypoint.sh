#!/usr/bin/env bash
envsubst '$HADOOP_MASTER $HBASE_DOCKER' < "/tmp/pseudo-distributed.ini.template" > "/hue/desktop/conf/pseudo-distributed.ini"
exec "$@"
