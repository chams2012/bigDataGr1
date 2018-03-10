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
	
> Pour chercher
	http://localhost:9200/github_commits/commit/_search
	
> Pour chercher par language :
	http://localhost:9200/github_commits/q_search?q.fields.language:cpp
	
> Pour chercher par contenu :
	http://localhost:9200/github_commits/q_search?q.fields.contenu:warning
