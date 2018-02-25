# Stockage des datas qui importent

Depuis Google Big Query, on peut demander des exports en ndjson ou en csv. On peut aussi réduire la taille de l’ensemble si on ne veut pas tout importer… 
On peut par exemple ne prendre que n% des enregistrements aléatoirement si on pense que ça pose problème ce trop gros volume ? 
Google Big Query permet aussi d’exporter les résultats d’une requête.

Ce serait bien si ces fichiers étaient loadées dans une base de données qui gèrent l’ajout à la volée de nouvelles colonnes car on prévoit que de nouvelles 
informations vont venir détailler les repository...
