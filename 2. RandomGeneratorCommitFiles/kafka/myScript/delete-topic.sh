#!/bin/bash

#cd ~/DataProject
cd ./
# suppression des topics

kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic  topic-commit,my-topic,my-topic-replication3,my-failsafe-topic,my-topic-commit


#kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --alter --topic topic-commit,my-topic,my-topic-replication3,my-failsafe-topic,my-topic-commit --config retention.ms=1000
#kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --alter --topic topic-commit,my-topic,my-topic-replication3,my-failsafe-topic,my-topic-commit --delete-config retention.ms
