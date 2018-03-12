#!/bin/bash

# githubarchive
for file in github_mongo_neo4j/githubarchive*.json.gz;
        do zcat "$file" | mongoimport --db github_demo --collection githubarchive;
done

