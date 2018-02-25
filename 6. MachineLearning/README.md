# Prédire qu’un repository devrait devenir massivement adopté

Disons que les repository massivement adoptés (dits MA dans la suite) sont ceux qui sont dans les X% les plus starrés (cf event WatchEvent). 
Soit un repo est MA, soit il ne l’est pas.
Créer un modèle qui permette à partir d’un repository donné de savoir si il va être MA ou non. On pourra et devra sans doute créer un dataset complètement 
from scratch.

Qu’est-ce qui influence le fait de devenir un repository MA ?
  
Créez vos propres training data set et test data set. Evidemment, un même repository on peut se demander à plusieurs moments si il va devenir MA. 
Deux mois après sa création, que disait notre modèle ? Trois mois après, que disait-il ? Un an après ?
 Evidemment il faut s’y intéresser du moment que le nombre de Stars ne dépasse pas le seuil choisi X...
