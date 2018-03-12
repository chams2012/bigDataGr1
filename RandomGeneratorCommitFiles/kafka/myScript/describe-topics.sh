#!/bin/bash

#cd ~/myProject
cd ../..

# List existing topics
kafka/bin/kafka-topics.sh --describe \
    --topic topiccommit \
    --zookeeper localhost:2181
