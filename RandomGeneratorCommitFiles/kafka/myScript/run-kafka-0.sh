#!/bin/bash
#CONFIG=`pwd`/config
#CONFIG=~/myProject/kafka/config
CONFIG=kafka/config
#cd ~/myProject
cd ../..

#echo $CONFIG
## Run Kafka
kafka/bin/kafka-server-start.sh \
    "$CONFIG/server-0.properties"
