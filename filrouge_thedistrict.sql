-- Afficher la liste des commandes ( la liste doit faire apparaitre la date, les informations du client, le plat et le prix )

SELECT commande.date_commande, commande.etat, commande.nom_client, plat.libelle, commande.total
FROM commande
JOIN plat 
ON plat.id = commande.id_plat;

-- Afficher la liste des plats en spécifiant la catégorie

SELECT plat.libelle AS nom_plat, categorie.libelle AS cat_plat
FROM plat
JOIN categorie
ON plat.id_categorie = categorie.id;

-- Afficher les catégories et le nombre de plats actifs dans chaque catégorie

SELECT COUNT(plat.libelle) AS nmbr_plat, categorie.libelle AS cat_plat
FROM plat
JOIN categorie
ON plat.id_categorie = categorie.id
GROUP BY cat_plat;

-- Liste des plats les plus vendus par ordre décroissant

SELECT plat.libelle AS nom_plat, SUM(commande.quantite) AS nmbr_vendu
FROM plat
JOIN commande
ON commande.id_plat = plat.id
GROUP BY nom_plat
ORDER BY nmbr_vendu DESC;

-- Le plat le plus rémunérateur (pas finis)

SELECT plat.libelle AS nom_plat, MAX(commande.quantite*plat.prix) AS total
FROM plat
JOIN commande
ON commande.id_plat = plat.id;

-- Liste des clients et le chiffre d'affaire généré par client (par ordre décroissant)

SELECT nom_client, total AS chiffre_affaire FROM `commande` ORDER BY chiffre_affaire DESC;

-------- MODIFICATION
-- Ecrivez une requête permettant de supprimer les plats non actif de la base de données

DELETE FROM plat WHERE active = 'No';

-- Ecrivez une requête permettant de supprimer les commandes avec le statut livré

DELETE FROM commande WHERE etat = 'Livrée';

-- Ecrivez un script sql permettant d'ajouter une nouvelle catégorie et un plat dans cette nouvelle catégorie.

INSERT INTO `categorie`(`libelle`, `image`, `active`) VALUES (1, 2, 3)

INSERT INTO `plat`(`libelle`, `description`, `prix`, `image`, `id_categorie`, `active`) 
VALUES (1, 2, 3, 4, LAST_INSERT_ID(), 6);

-- c'est pas du tout ça BREF je reviens dessus plus tard

INSERT INTO categorie (libelle, image, active)
  VALUES('test', 'test', 'test');
INSERT INTO plat (libelle, description, prix, image, id_categorie, active) 
  VALUES('test', 'test', 12, 'test', LAST_INSERT_ID(),'test');

-- Ecrivez une requête permettant d'augmenter de 10% le prix des plats de la catégorie 'Pizza'

UPDATE plat SET prix = prix * 1.1 WHERE id_categorie = (SELECT id FROM categorie WHERE libelle = 'Pizza');




