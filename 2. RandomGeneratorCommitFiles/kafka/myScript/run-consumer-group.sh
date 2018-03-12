#!/bin/bash
#cd ~/DataProject
cd ./

echo "La list des messages :"

kafka/bin/kafka-console-consumer.sh \
    --bootstrap-server localhost:9094,localhost:9092,localhost:9093 \
    --topic topiccommit \
    --consumer-property group.id=groupGitHub
