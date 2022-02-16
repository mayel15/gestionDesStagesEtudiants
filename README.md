# gestionDesStagesEtudiants
0. Sujet : Chaque année, les étudiants sont inscrits dans une formation d’un des instituts de l’université. 
Certaines de ces formations donnent lieu à la réalisation d’un stage obligatoire en entreprise. Ce 
stage porte sur un sujet défini et a une durée comprise entre la durée minimale et la durée maximale 
imposée pour chacune des formations. Chaque étudiant en stage est suivi par un (seul) responsable 
universitaire (un enseignant de l’université) et un responsable industriel (un employé de l’entreprise 
où s’effectue le stage). Certaines entreprises envoient des propositions de stages à destination des 
étudiants d’une ou plusieurs formations afin qu’elles soient diffusées aux étudiants concernés. Les 
stages d’une durée supérieure à deux mois doivent être rémunérés, même s’ils sont réalisés dans 
des établissements publics. Les étudiants qui ne sont pas inscrits dans des formations comportant 
un stage obligatoire peuvent réaliser un stage optionnel. Les stages font l’objet d’une convention 
entre l’entreprise, l’étudiant et l’université. Le représentant légal de chaque entreprise doit être 
connu pour établir la convention de stage. La date de soutenance du stage est connue pour chaque 
formation. Les étudiants inscrits en formation par apprentissage n’ont bien sûr pas de stage à réaliser 
puisqu’ils passent la moitié de leur temps dans l’entreprise qui les emploie. Les élèves-ingénieurs 
doivent quant à eux réaliser une mobilité à l’international pour obtenir leur diplôme. Ils peuvent 
réaliser un stage en laboratoire en 4ème ou 5ème année mais doivent impérativement effectuer un stage 
en entreprise lors d’une de ces deux dernières années de formation.

1. Conception du modèle Entité/Asoosciation du problème

2. Transformation du modèle Entité/Association en modèle relationnel avec la création des tables

3. Ecriture de requêtes SQL:
a. Trouver la liste des étudiants de l’université en stage chez ATOS Worldline durant 
l’année universitaire 2020/2021.
b. Donner le sujet et les coordonnées de l’entreprise des stagiaires de Master2 TNSID, 
promotion 2019/2020, suivis en stage par Mme Thilliez. 
3.c. Donner le nom et le prénom des étudiants qui ont trouvé un stage pour l’année en cours. 
d. Donner les nom et prénom ainsi que la formation des étudiants qui n’ont pas (encore) 
trouvé de stage pour l’année en cours (par formation où un stage est obligatoire). 
e. Trouver le nom, le prénom et la date de naissance de l’étudiant ayant obtenu 
l’indemnité de stage la plus importante pour les stages réalisés dans la promotion 2007/2008. 
f. Donner la moyenne des indemnités de stage perçus par les élèves-ingénieurs par spécialité.
g. Consulter le nombre d’étudiants par formation. 
h. Connaître les anciens étudiants qui ont pris des étudiants en stage (i.e., ont été responsables industriels d’un stagiaire), une fois embauchés dans une entreprise. 
i. Trouver l’entreprise qui a pris le plus de stagiaires, toutes formations confondues. 
j. Consulter la durée effective moyenne des stages réalisés. 
k. Consulter les entreprises qui n’ont jamais pris de stagiaire inscrit dans une formation 
d’ingénieurs. 
l. Consulter le nombre d’étudiants qui ont trouvé leur stage grâce aux propositions envoyées par les entreprises. 
m. Consulter la liste des entreprises ayant pris un stagiaire dans au moins trois formations de l’université.
n. Consulter la liste de tous les stages effectués par chaque étudiant
o. Consulter la liste des entreprises qui ont pris un stagiaire lors des deux dernières années par formation
p. Connaître le stagiaire le mieux payé
q. Donner le top 10 des entreprises ayant pris en stage le plus d’élèves-ingénieurs de la spécialité Informatique et Cybersécurité

4. Création de vues:
a. Créer une vue des stagiaires de l’année en cours (par formation)
b. Créer une vue des élèves-ingénieurs validant les conditions imposées sur les stages afin de pouvoir être diplômés.
c. Créer une vue permettant d’accéder aux anciens étudiants de l’université qui ont été recrutés dans l’entreprise où ils ont effectué leur stage

5. Réalisé en janvier 2022, dans le cadre d'un TP de bases de données, par THIAM Pape Mayel Diagne et TASSEMBEDO Brandon

