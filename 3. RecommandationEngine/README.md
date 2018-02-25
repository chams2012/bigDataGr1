# Construction d’un moteur de recommandations

Un repository a un ou plusieurs contributeurs (users ayant fait des commits ou autre façon de considérer un utilisateur comme contributeur…). 
Certains contributeurs s’ennuient et voudraient contribuer à d’autres projets que ceux où ils contribuent déjà. Construire une structure qui permette de 
répondre à cette problématique.

Typiquement, si l’user X participe au projet a, b et c. Que le user Y participe à a, b et d. On pourrait proposer par exemple au user X de participer au projet d… 
Grâce à cet outil, on permettrait à la communauté de prendre part à plus de projets, d’en découvrir d’autres… 
Le monde de l’open source s’en porterait que mieux !

Evidemment, on voudrait pouvoir avoir des recommandations sur un langage donné, sur une popularité minimale donnée (au moins k stars ?).

Evidemment, on voudrait utiliser notre moteur de recommandation pour recommander des projets à des personnes qui ne veulent pas forcément y contribuer mais 
juste les starrer éventuellement et du coup en découvrir d’autres ! On entrevoit que plusieurs types de relations entre un user et un repository peuvent exister.
 On peut bien sûr être à la fois contributeur du projet x et starreur du projet y.
