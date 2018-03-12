#!/bin/bash

#cd ~/DataProject
cd ./

# List existing topics
kafka/bin/kafka-topics.sh --list --zookeeper localhost:2181
