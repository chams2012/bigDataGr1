#!/bin/bash

# variables
image_mongo="mongoimg"
image_producer="producerimg"
image_consumer="consumerimg"
image_KB='kibanaimg'
image_ES="elasticsearchimg"
image_Neo4j="neo4jimg"
#image_python="pythonimg"


#-----------------------------------------------------------
#             build mongo image
#-----------------------------------------------------------

if [ -z "$(docker images -q $image_mongo)" ]; 
then
    echo "$image_mongo n'existe pas, en  cours de construction .."
    sudo docker build -t $image_mongo --file DockerfileMongo . 
else
echo "$image_mongo exist déja"
fi

#-----------------------------------------------------------
#             build producer image
#-----------------------------------------------------------

if [ -z "$(docker images -q $image_producer)" ]; 
then
   echo "$image_producer n'existe pas, en  cours de construction .."
    sudo docker build -t $image_producer --file DockerfileProducer .
else
echo "$image_producer exist déja"
fi

#-----------------------------------------------------------
#             build simulator image
#-----------------------------------------------------------

if [ -z "$(docker images -q $image_consumer)" ]; 
then
    echo "$image_consumer n'existe pas, en  cours de construction .."
    sudo docker build -t $image_consumer --file DockerfileConsumer . 
else
echo "$image_consumer exist déja"
fi


#-----------------------------------------------------------
#             build elasticSerach image
#-----------------------------------------------------------

if [ -z "$(docker images -q $image_ES)" ]; 
then
    echo "$image_ES n'existe pas, en  cours de construction .."
    sudo docker build -t $image_ES --file DockerfileElastic .
else
echo "$image_ES exist déja"
fi


#-----------------------------------------------------------
#             build kibana image
#-----------------------------------------------------------

if [ -z "$(docker images -q $image_KB)" ]; 
then
   echo "$image_KB n'existe pas, en  cours de construction .."
    sudo docker build -t $image_KB --file DockerfileKibana .
else
echo "$image_KB exist déja"
fi

#-----------------------------------------------------------
#             build neo4j image
#-----------------------------------------------------------

if [ -z "$(docker images -q $image_Neo4j)" ]; 
then
   echo "$image_Neo4j n'existe pas, en  cours de construction .."
  # sudo docker build -t $image_Neo4j --file DockerfileNeo4j .
else
echo "$image_Neo4j exist déja"
fi
