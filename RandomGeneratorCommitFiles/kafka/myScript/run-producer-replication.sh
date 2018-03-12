#!/bin/bash
#cd ~/myProject
cd ../..


echo "Saisir votre message: chque ligne est un message à consommer :" 

kafka/bin/kafka-console-producer.sh \
    --broker-list localhost:9092,localhost:9093,localhost:9094 \
    --topic topiccommit
