# Google Big Query
------------------

project_name : bigquery-public-data
dataset_name : github_repos
list_tables : [languages, licenses, githubarchive, commits, contents, files]

*****************************************************************************
1. Exécuter la commande :
docker-compose up -d 

2. Se connecter en shell :
docker exec -it dockerjupytermongodb_mongo_1 bash

3. Se positionner dans le répertoire /tmp/share : 
cd /tmp/share


4. Exécuter le script en ligne de commande :
./import_github_demo.sh