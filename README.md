# Projet Aéroports

# Présentation de l'équipe
Pour la réalisation de ce projet, nous sommes un groupe de 4 personnes de 1TM2 :
*	Julie Fino
*	Ikram Jaujate
*	Thomas Vonck
*	Eric Suys

# Description du Projet 
Ce projet représente en page HTML les panneaux d'affichage de vols d'aéroports. L'utilisateur pourra accéder à une page web afin de voir les vols disponibles, il pourra également réaliser une requête afin de rechercher des informations sur ces vols (date départ, arrivée, aéroport de départ, aéroport de destination, nombre de sièges, ...). 
L'utilisateur pourra aussi rechercher la disponibilité des aéroports par pays (avec possibilité de réinitialiser la requête), ajouter des airlines et également ajouter des vols à la base de données via un formulaire HTML.

# Fonctionnalités principales
* Une page html comportant le panneau d’affichage des vols disponible.

* Formulaire permettant à l’utilisateur de réaliser des requêtes correspondant aux vols.

* Mais aussi, réaliser des recherches sur chaque pays, afin de voir la quantité et disponibilité des aéroports dans celui-ci.

* Permet d’ajouter des vols pour l’avenir.

# Fonctionnalités supplémentaires
* Possibilité de changer la langue de la page. 

# Implémentation : approche technique
Le travail est divisé en deux partie, la première c’est le back-end qui correspond à la création des différentes tables dans notre base de données mais aussi les procédures et les différents Web Service dont notre page aura besoin pour la réalisation des différentes tâches. De même, on aura besoin de la partie front-end qui correspond à la structure de notre page web ainsi que les différents scripts afin de mettre en forme notre page.

# Partie back-end
1.	Une base de données qui va enregistrer des vols.
2.	Un serveur web qui sera capable de nous fournir les pages HTML, JS et CSS, ainsi que de proposer des Web Services
3.	Des Web Services (avec les procédures associées) :
  *	Un Web Service capable de récupérer les vols disponibles et les placer dans l'HTML
  *	Un Web Service capable de récupérer la langue souhaitée et de pouvoir traduire la page selon celui-ci.
  *	Un Web Service capable d'ajouter dans la base de données différents vols ainsi que des compagnies aériennes.
  *	Un Web Service qui va pouvoir récupérer les données d’une recherche dans la base de données.

# Partie front-end
1.	Une page Web (HTLM, JS, CSS) permettant d'appeler les webservices et de traiter les réponses, qui propose une interface utilisateur pour :
*	Changer la langue de la page.
*	Afficher les vols disponibles.
*	Afficher les résultats des différentes requêtes. 

![](image/tableau.png)
