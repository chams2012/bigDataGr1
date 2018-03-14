# Il s'agit de synchroniser MongoDB (en mode replSet) avec Neo4j 
# Pour ce cela, nous allons utiliser le connecteur : neo4j-doc-manager
# Documentation : https://github.com/neo4j-contrib/neo4j_doc_manager/blob/master/docs/neo4j_doc_manager_doc.adoc


> docker-compose up --build -d

> Vérifier le statut des images dockers :
	- dockermongoneo4jconnector_mongo_1 : UP
	- dockermongoneo4jconnector_neo4j_1 : UP
	- dockermongoneo4jconnector_mongo_connector_1 : Exit
	
> Se connecter sur la machine hébergeant MongoDB :
	- docker exec -it dockermongoneo4jconnector_mongo_1 bash

> Lancer la commande suivante :
	- mongo
	
> Dans le mongo shel, initialiser la configuration : 
    - rs.initiate()
	
> MongoDB est un "Noeud Secondaire", il faut taper la commande "Entrer" pour qu'il passe "Noeud Primaire".

> Se déconnecter du shell MongoDB et de la machine "dockermongoneo4jconnector_mongo_1" (Ctrl C , Ctrl D)

> Lancer le  connecteur "neo4j-doc-manager":
    - docker-compose up -d
	
> Vérifier le statut des images dockers :
	- dockermongoneo4jconnector_mongo_1 : UP
	- dockermongoneo4jconnector_neo4j_1 : UP
	- dockermongoneo4jconnector_mongo_connector_1 : UP
	
> Se connecter sur la machine hébergeant MongoDB :
	- docker exec -it dockermongoneo4jconnector_mongo_1 bash
	
> Se positionner dans le répertoire de partage :
    - cd /tmp/share	
	
> Lancer le script "import_github_mongo_neo4j.sh"
    - ./import_github_mongo_neo4j.sh
	
> Au moment de l'import des tables à partir des backup "githubarchive*.json.gz",
  une nouvelle base de données est créée côté Neo4j
  
> Lancer le navigateur :
  - http://localhost:7474/browser/
  
> Taper la commande suivante :
  - MATCH(n) RETURN(n) LIMIT 500
  
> Il reste à impélmenter des requêtes ....