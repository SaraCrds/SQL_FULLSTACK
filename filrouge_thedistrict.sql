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

SELECT plat.libelle AS nom_plat, commande.quantite*plat.prix AS total
FROM plat
JOIN commande
ON commande.id_plat = plat.id
GROUP BY nom_plat  
ORDER BY `total` DESC;

-- Liste des clients et le chiffre d'affaire généré par client (par ordre décroissant)
