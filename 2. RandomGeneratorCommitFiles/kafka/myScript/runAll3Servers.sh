#!/bin/bash
echo " ====== > Prerequis "
echo "Installation de JAVA 8"
echo -e "Téléchargement de  Kafka - version 05-Mar-2018 - 
     - wget apache.crihan.fr/dist/kafka/1.0.1/kafka_2.12-1.0.1.tgz
     - tar xzf kafka_2.12-1.0.1.tgz"
 
echo -e "\n"

echo " ======= >  Liste des étapes "


echo " ======= > étape 1 : Lancement de ZooKeeper  en se basant sur zookeeper.properties......"
gnome-terminal -e ./run-zookeeper.sh
#read -n1

echo " ======= > étape 2 : Lancement des serveurs Kafka "
echo "Tapez pour lancer "
read -n1
echo "Serveur-0 on localhost :9092 ......"
gnome-terminal -e ./run-kafka-0.sh

echo "Serveur-1 n localhost :9093......"
gnome-terminal -e ./run-kafka-1.sh

echo "Serveur-2 n localhost :9094......"
gnome-terminal -e ./run-kafka-2.sh


echo " ======= > étape 3 :  Créer  le/les Topic my-topic-commit avec  3 replition-factor  et  10 partitions."
echo "Tapez pour créer le topic !"
read -n1
./delete-topic.sh 
./create-topic-replication.sh


echo " ======= > étape 4 :  Lister les topics crés"
echo "Tapez pour afficher  :"
#gnome-terminal -e ./run-kafka.sh
read -n1 
./test-topic.sh

echo " ======= > étape 5 : Démarrer le Producer  et saisir des msg..."
echo "Tapez pour démarrer le producer sur une autre fenêtre ....  ./run-producer.sh !!!!!!!!"
read -n1
gnome-terminal -e ./run-producer-replication.sh


echo " ======= > étape 6 : Démarrer le consumer  et voir ce qui se passe..."
echo "Tapez pour démarrer le consumer  ....  ./run-consumer.sh !!!!!!!!"
#gnome-terminal -e ./run-consumer.sh 
read -n1
gnome-terminal -e ./run-consumer-group.sh
