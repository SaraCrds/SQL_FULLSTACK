-- EXO 01, INSERT

INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) 
VALUES (26, 'Schrute', 'Dwight', '20000403', NULL, 'dir.vente', '34', 45000, NULL) ,
(27, 'Scott', 'Michael', '20000302', NULL, 'chef entrepot', '45', 55000, NULL) , 
(28, 'Halpert', 'Jim', '20011210', NULL, 'dir.finance', '41', 40000, NULL) ;

INSERT INTO  dept  ( nodept ,  nom ,  noregion ) 
VALUES ('55', 'communication', '4');

-- EXO 02, UPDATE

UPDATE employe
SET salaire = salaire * 1,1
WHERE noemp = 17;

UPDATE dept
SET nom = 'logistique'
WHERE nodept = '45';

-- EXO 03, DELETE

DELETE FROM employe 
WHERE noemp = '28';