# Construire un générateur de commits et de files aléatoires

Associés bien évidemment à des repository qui eux sont bien existants et réels. Ce serait bien ces informations nourrissait les différentes structures qu’on a.

Pour la génération aléatoire, on pourrait prendre des contenus déjà existants dans d’autres repository ayant les mêmes langages par exemple histoire de pas avoir
 des chaînes de caractères absurdes. Ou n’importe quoi d’autre (...) Ces contenus aléatoires pourraient être postés à un serveur web (pourquoi pas monter une 
 infrastructure loadbalancée ou utiliser des services qui vont loadbalancer d’eux mêmes) qui les dispatcherait à un broker MQTT ou AMQP 
 (RabbitMQ, Mosquitto ou pourquoi pas essayer VerneMQ ou autre chose).

On pourrait imaginer des subscribers qui vont consommer les évènements et les insérer dans les différents produits qui interviendraient après ?
