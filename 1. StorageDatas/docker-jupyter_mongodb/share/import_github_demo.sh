#!/bin/bash

# languages
zcat github_demo/languages.json.gz | mongoimport --db github_demo --collection languages

# licenses
zcat github_demo/licenses.json.gz | mongoimport --db github_demo --collection licenses

# repos_demo
zcat github_demo/repos_demo.json.gz | mongoimport --db github_demo --collection repos_demo

# githubarchive
for file in github_demo/githubarchive*.json.gz;
        do zcat "$file" | mongoimport --db github_demo --collection githubarchive;
done

# commits
for file in github_demo/commits-*.json.gz; 
	do zcat "$file" | mongoimport --db github_demo --collection commits; 
done

# files
zcat github_demo/files.json.gz | mongoimport --db github_demo --collection files

# contents
zcat github_demo/contents.json.gz | mongoimport --db github_demo --collection contents
