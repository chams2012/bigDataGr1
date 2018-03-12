#!/bin/bash

#cd ~/myProject
cd ../..
# Create a topic
kafka/bin/kafka-topics.sh --create \
    --zookeeper localhost:2181 \
    --replication-factor 3 \
    --partitions 10 \
    --topic topiccommit
