-- 01 Rechercher le prénom des employés et le numéro de la région de leur département.

SELECT employe.prenom, dept.noregion FROM employe  JOIN dept ON employe.nodep = dept.nodept;

-- 02 Rechercher le numéro du département, le nom du département, le nom des employés classés par numéro de département (renommer les tables utilisées).

SELECT employe.nom, employe.nodep, dept.nom FROM employe JOIN dept ON employe.nodep = dept.nodept ORDER BY employe.nodep;

-- 03 Rechercher le nom des employés du département Distribution.

SELECT employe.nom FROM employe JOIN dept ON employe.nodep = dept.nodept WHERE dept.nom = 'distribution';

-- 04 Rechercher le nom et le salaire des employés qui gagnent plus que leur patron, et le nom et le salaire de leur patron.

--  Qui est leur patron? Le président? Les différents directeurs de région?

-- 05 Rechercher le nom et le titre des employés qui ont le même titre que Amartakaldire.

SELECT nom, titre FROM `employe` WHERE titre IN (SELECT titre FROM `employe` WHERE nom = 'Amartakaldire');

-- 06 Rechercher le nom, le salaire et le numéro de département des employés qui gagnent plus qu'un seul employé du département 31, classés par numéro de département et salaire.

SELECT nom, salaire, nodep FROM `employe` WHERE salaire > ANY (SELECT salaire FROM `employe` WHERE nodep = '31') ORDER BY nodep, salaire ASC;

-- 07 Rechercher le nom, le salaire et le numéro de département des employés qui gagnent plus que tous les employés du département 31, classés par numéro de département et salaire.

SELECT nom, salaire, nodep FROM `employe` WHERE salaire > ALL (SELECT salaire FROM `employe` WHERE nodep = '31') ORDER BY nodep, salaire ASC;

-- 08 Rechercher le nom et le titre des employés du service 31 qui ont un titre que l'on trouve dans le département 32.

SELECT nom, titre FROM `employe` WHERE titre IN (SELECT titre FROM `employe` WHERE nodep = '32') AND nodep = '31';

-- 09 Rechercher le nom et le titre des employés du service 31 qui ont un titre l'on ne trouve pas dans le département 32.

SELECT nom, titre FROM `employe` WHERE titre NOT IN (SELECT titre FROM `employe` WHERE nodep = '32') AND nodep = '31';

-- 10 Rechercher le nom, le titre et le salaire des employés qui ont le même titre et le même salaire que Fairent.

SELECT nom, titre, salaire FROM `employe` WHERE titre IN (SELECT titre FROM `employe` WHERE nom = 'Fairent') AND salaire IN (SELECT salaire FROM `employe` WHERE nom = 'Fairent');

-- 11 Rechercher le numéro de département, le nom du département, le nom des employés, en affichant aussi les départements dans lesquels il n'y a personne, classés par numéro de département.

SELECT employe.nodep, dept.nom, employe.nom FROM employe LEFT JOIN dept ON employe.nodep = dept.nodept ORDER BY employe.nodep;
