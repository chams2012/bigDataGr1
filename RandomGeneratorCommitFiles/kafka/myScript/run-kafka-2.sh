#!/bin/bash
#CONFIG=`pwd`/config
#CONFIG=~/myProject/kafka/config
CONFIG=kafka/config

#cd ~/myProject
cd ../..

## Run Kafka
kafka/bin/kafka-server-start.sh \
    "$CONFIG/server-2.properties"
