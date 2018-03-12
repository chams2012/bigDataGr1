#!/bin/bash
#cd ~/Project/Simulateur
#CURRENTREP=`pwd`
#export CLASSPATH=$CURRENTREP:$CLASSPATH
cd ../..
pwd
kafka/bin/zookeeper-server-start.sh kafka/config/zookeeper.properties
