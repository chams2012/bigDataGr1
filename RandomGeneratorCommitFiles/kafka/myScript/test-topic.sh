#!/bin/bash

#cd ~/myProject
cd ../..

# List existing topics
kafka/bin/kafka-topics.sh --list --zookeeper localhost:2181
