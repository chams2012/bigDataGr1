#!/bin/bash
echo " ======= > étape 0 :Prerequis  : JAVA 8 et kafka_2.12-1.0.1"

echo " ======= > étape 1 : Lancement de ZooKeeper  en se basant sur zookeeper.properties......"
gnome-terminal -e ./run-zookeeper.sh

sleep 5
echo " ======= > étape 3 : Démaragge des serveurs Kafka......"
echo "                    -  Serveur-0 on localhost :9092"
gnome-terminal -e ./run-kafka-0.sh

echo "                    -  Serveur-1 n localhost :9093"
gnome-terminal -e ./run-kafka-1.sh

echo "                    -  Serveur-2 n localhost :9094"
gnome-terminal -e ./run-kafka-2.sh

echo " ======= > étape 4 :  Créer  le/les Topic my-topic-commit avec  3 replition-factor  et  10 partitions."
./delete-topic.sh 
./create-topic-replication.sh

echo "                    -  Lister les topics crés"
#gnome-terminal -e ./run-kafka.sh
./test-topic.sh

#echo " ======= > étape 5 : Démarrer le Producer  et saisir des msg..."
#gnome-terminal -e ./run-producer-replication.sh

#echo " ======= > étape 6 : Démarrer le consumer  et voir ce qui se passe..."
#gnome-terminal -e ./run-consumer-group.sh
