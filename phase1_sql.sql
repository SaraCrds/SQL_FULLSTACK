-- 01

SELECT * FROM employe;

-- 02

SELECT * FROM dept;

-- 03

SELECT nom, dateemb, nosup, nodep, salaire  FROM `employe`;

-- 04

SELECT titre FROM `employe`;

-- 05

SELECT DISTINCT titre FROM `employe`;

-- 06

SELECT nom, noemp, nodep FROM `employe` WHERE titre = 'secrétaire';

-- 07

SELECT nom, nodept FROM `dept` WHERE nodept > 40;

-- 08

???

-- 09

SELECT nom, salaire, nodep FROM `employe` WHERE titre = 'représentant' AND nodep = 35 AND salaire > 20000;

-- 10

SELECT nom, titre, salaire FROM `employe` WHERE titre = 'représentant' OR titre = 'président';

-- 11

SELECT nom, titre, nodep, salaire FROM `employe` WHERE nodep = 34 AND titre = 'représentant' OR nodep = 34 AND titre = 'secrétaire';

-- 12

SELECT nom, titre, nodep, salaire FROM `employe` WHERE titre = 'représentant' OR nodep = 34 AND titre = 'secrétaire';

-- 13

SELECT nom, salaire FROM `employe` WHERE salaire BETWEEN 20000 AND 30000;

-- 14 IL NEXISTE PAS????



-- 15

SELECT nom FROM `employe` WHERE nom LIKE 'h%';

-- 16

SELECT nom FROM `employe` WHERE nom LIKE '%n';

-- 17

SELECT nom FROM `employe` WHERE nom LIKE '__u%';

-- 18

SELECT `nom`, `salaire` FROM `employe` ORDER BY salaire ASC;

-- 19

SELECT `nom`, `salaire` FROM `employe` ORDER BY salaire DESC;

-- 20

SELECT `nom`, `titre`, `salaire` FROM `employe` ORDER BY titre ASC, salaire DESC;

-- 21

SELECT `nom`, `salaire`, `tauxcom`, `titre` FROM `employe` ORDER BY tauxcom ASC;

-- 22

SELECT `nom`, `salaire`, `tauxcom`, `titre` FROM `employe` WHERE tauxcom IS NULL;

-- 23

SELECT `nom`, `salaire`, `tauxcom`, `titre` FROM `employe` WHERE tauxcom IS NOT NULL;

-- 24

SELECT `nom`, `salaire`, `tauxcom`, `titre` FROM `employe` WHERE tauxcom < 15;

-- 25

SELECT `nom`, `salaire`, `tauxcom`, `titre` FROM `employe` WHERE tauxcom > 15;

-- 26

SELECT `nom`, `salaire`, `tauxcom`, salaire*tauxcom AS commission_employe FROM `employe` WHERE tauxcom IS NOT NULL;

-- 27

SELECT `nom`, `salaire`, `tauxcom`, salaire*tauxcom AS commission_employe FROM `employe` WHERE tauxcom IS NOT NULL ORDER BY tauxcom ASC;

-- 28

SELECT CONCAT(nom, ' ', prenom) AS nom_prenom FROM employe;

-- 29

SELECT SUBSTRING(nom, 1, 5) FROM `employe`;

-- 30

SELECT `nom`, LOCATE ('r', nom) AS 'position_r' FROM `employe`;

-- 31

SELECT `nom`, UPPER(nom) AS 'nom_maj', LOWER(nom) AS 'nom_min' FROM `employe` WHERE nom ='Vrante';

-- 32

SELECT `nom`, LENGTH(nom) AS 'nom_longueur' FROM `employe`;

