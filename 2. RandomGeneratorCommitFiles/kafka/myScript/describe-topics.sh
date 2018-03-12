#!/bin/bash

#cd ~/DataProject
cd ./

# List existing topics
kafka/bin/kafka-topics.sh --describe \
    --topic topiccommit \
    --zookeeper localhost:2181
