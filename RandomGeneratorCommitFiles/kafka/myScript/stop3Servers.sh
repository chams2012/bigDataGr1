#!/bin/bash
#cd ~/myProject
cd ../..

# stop all servers
kafka/bin/kafka-server-stop.sh config/server-0.properties
kafka/bin/kafka-server-stop.sh config/server-1.properties
kafka/bin/kafka-server-stop.sh config/server-2.properties
kafka/bin/zookeeper-server-stop.sh

