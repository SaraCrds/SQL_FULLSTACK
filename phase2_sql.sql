-- 1

SELECT COUNT(nom) AS 'nombre_employe', titre FROM `employe` GROUP BY titre;

-- 2

SELECT AVG(salaire) AS 'moy_salaire', SUM(salaire) AS 'som_salaire', nodep FROM `employe` GROUP BY nodep;

-- 3

SELECT COUNT(nom) AS 'nmbr_employe', nodep FROM `employe` GROUP BY nodep HAVING COUNT(*) >= 3;


-- 4

SELECT LEFT(nom, 1) AS premiere_lettre, COUNT(*) AS 'nmbr' FROM `employe` GROUP BY premiere_lettre HAVING COUNT(*) >= 3;

-- 5

SELECT MAX(salaire) AS salaire_max, MIN(salaire) AS salaire_min, salaire_max - salaire_min AS ecart_salaire FROM employe;