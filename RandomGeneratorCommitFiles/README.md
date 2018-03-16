------------
# Construire un générateur de commits et de files aléatoires
*Associés bien évidemment à des repository qui eux sont bien existants et réels. Ce serait bien ces informations nourrissait les différentes structures qu’on a.*
*Pour la génération aléatoire, on pourrait prendre des contenus déjà existants dans d’autres repository ayant les mêmes langages par exemple histoire de pas avoir
 des chaînes de caractères absurdes. Ou n’importe quoi d’autre (...) Ces contenus aléatoires pourraient être postés à un serveur web (pourquoi pas monter une 
 infrastructure loadbalancée ou utiliser des services qui vont loadbalancer d’eux mêmes) qui les dispatcherait à un broker MQTT ou AMQP (RabbitMQ, Mosquitto ou pourquoi pas essayer VerneMQ ou autre chose).*
*On pourrait imaginer des subscribers qui vont consommer les évènements et les insérer dans les différents produits qui interviendraient après ?*
------------
# Liste des étapes à Suivre pour utiliser Kafka 
## Methode pas à pas
se placer dans le repertoire des scipts pour exécuter ces commandes : 
1. Lancement de ZooKeeper  (gestion des clusters, config via zookeeper.properties)
	 Exécuter le scipt suivant : ```./run-zookeeper.sh```
2.  Lancement des serveurs Kafka  dans des fenêtres séparement 
Exécuter le scipt suivant : ```./run-kafka-0.sh```
Exécuter le scipt suivant : ```./run-kafka-1.sh```
Exécuter le scipt suivant : ```./run-kafka-2.sh```
3. Création du/des Topic
 Exécuter le scipt suivant ```./create-topic-replication.sh```
4. Lister less topics crées"
Exécuter le scipt suivant : ```./test-topic.sh```
5. Démarrer le "Producer"  ( ! ! dans une fenêtre  à part, et vous pouvez saisir les messages après quand vous voulez)
Exécuter le scipt suivant :       
	```./run-producer-replication.sh```
 6. Démarrer le "consumer"  ( !! dans une fenêtre  à part , pour mieux voir l'arrivé des messages,  on peut  lancer autant de "consumers" qu'on veut ).
 Exécuter le scipt suivant : ```./run-consumer-group.sh```
7. // en cours  ne fonctionne pas encore avec.. Java 
Exécuter le scipt suivant : ```./run-consumer-group.sh```
8. en cours 
9. en cours

## Methode Rapide
1. Lancement de tous les serveurs avec création du topic "topiccommit"
Exécuter le scipt suivant : ```./runAll3Servers.sh```
