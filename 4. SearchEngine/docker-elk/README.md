# Construction d’un moteur de recherche github pour les répertoires :

- 'tensorflow/tensorflow',	 
- 'torvalds/linux',
- 'facebook/react',	 
- 'apple/swift',	 
- 'Microsoft/vscode',	 
- 'twbs/bootstrap'

> Utiliser Postman

> Définir le mapping 5index : github_mapping) :
	- Méthode : PUT
	- URL : http://localhost:9200/github_commits
	- Body : raw + JSON(application/json)
	- Copier le contenu du fichier "mapping.json"
	
> Inséer les données (_bulk) :
	- Méthode : PUT
	- URL : http://localhost:9200/_bulk
	- Body : binary + sélect fichiers (github_commits.json)
	
> Pour chercher tout :
	http://localhost:9200/github_commits/commit/_search
	
> Pour chercher tous les répertoires Git :
	http://localhost:9200/github_commits/_search?q=repo_name:*
	
> Pour chercher par language (language=swift) :
	http://localhost:9200/github_commits/_search?q=language:swift
	
> Pour chercher par contenu (warning):
	http://localhost:9200/github_commits/_search?q=content:warning
