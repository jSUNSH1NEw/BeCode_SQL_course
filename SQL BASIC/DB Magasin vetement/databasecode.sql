CREATE DATABASE Clients (
    Id int PRIMARY KEY IDENTITY (1,1),
    Prenom VARCHAR (50),
    Nom VARCHAR (50),
    Age int
);

INSERT INTO Client
    (Prenom, Nom, [Age])
        values ('Joey','Weertz',18);

INSERT INTO Client 
    (Prenom,Nom, [Age])
        values ('Matt','Weertz',15);

INSERT INTO Client 
    (Prenom,Nom, [Age])
        values ('Bruce','Wayne',28);

INSERT INTO Client
    (Prenom,Nom, [Age])
        values ('Sylvia','kova',25);

INSERT INTO Client
    (Prenom,nom, [Age])
        values ('Mike','Smith',55);

INSERT INTO Client 
    (Prenom,Nom, [Age])
        values ('Sylvia','Addons',42);ssss

SELECT Prenom,Nom,Age
FROM Clients AS C 
WHERE Prenom='Sylvia'
AND Nom='kova'

---------------------------------------------------------------------!
Les donné sont cree et checker ! 
---------------------------------------------------------------------!

---------------------------------------------------------------------!
'update en sql'
---------------------------------------------------------------------!

UPDATE Clients
Set Age=35
WHERE Prenom='Joey'
AND Nom='Weertz';




---------------------------------------------------------------------!
--? DELETES LES DATA OU DROP LA DATABASE OU LES TABLES
---------------------------------------------------------------------!

DELETE Clients 
WHERE Prenom='Mike'
AND Nom='Smith_';


---------------------------------------------------------------------!
'CREE DES DONNEE Pour des utilisateur deja crée'
---------------------------------------------------------------------!
ALTER TABLE Clients
ADD Locations VARCHAR(50);

UPDATE Clients 
Set Locations="New York"
WHERE Prenom='Bruce'
AND Nom='Wayne';

UPDATE Clients 
Set Locations="Liege city"
WHERE Prenom='Joey'
AND Nom='Weertz';

UPDATE Clients 
Set Locations="San francisco"
WHERE Prenom='Matt'
AND Nom='Weertz';






---------------------------------------------------------------------!
--? creation d'une tables produits Et commande"Ordre" (POUR LA CREATION DE LIAISON DE TABLE)
---------------------------------------------------------------------!

CREATE TABLE Produit (
    ID int PRIMARY KEY IDENTITY(1,1),
    NomProduit VARCHAR(50)
)

ALTER TABLE Produits
add Prix float;

SELECT * FROM Produits p

INSERT INTO p (NomProduit, Prix) values ('Chaussure', '11.55');
INSERT INTO p (NomProduit, Prix) values ('T-Shirt', '8.95');
INSERT INTO p (Nomproduit, Prix) values ('Pantalon', '24.15');
INSERT INTO p (Nomproduit, Prix) values ('Pull', '12.95');

CREATE TABLE Ordres (
    OrdreID int PRIMARY KEY IDENTITY (1,1),
    OrdreDate DATETIME,
    ClientID int,
    ProduitID int
)

SELECT * FROM Ordres;

SELECT * FROM Produits;

SELECT * FROM Clients;

INSERT INTO Ordre (OrdreDate,ClientID,ProduitID) VALUES (GetDate (),3,2);


ALTER TABLE Ordre 
ADD FOREIGN KEY (ClientId) REFERENCES Clients (Id);
ADD FOREIGN KEY (ProduitID) REFERENCES Produits (ID);


SELECT ord.OrdreDate, prod.Nomproduit, prod.prix, cli.*
FROM Ordres ord
INNER JOIN Produits prod on Ord.produitID=prod.ID
INNER JOIN Clients cli on ord.ClientID=c.Id


SELECT ord.OrdreDate, prod.Nomproduit, prod.prix, cli.*


---------------------------------------------------------------------!
--? function Sum SQL 
---------------------------------------------------------------------!


SELECT cli.Nom, prod,NomProduit,sum(prod.Prix) Total Vente
FROM Ordres ord
INNER JOIN Produits prod on Ord.produitID=prod.ID
INNER JOIN Clients cli on ord.ClientID=c.Id
GROUP BY cli.Nom,prod.NomProduit


/* POUR SAVOIR SE OU VIENNE LES ACHAT */

SELECT cli.Locations,sum(prod.Prix),AVG(prod.Prix) Total
FROM Ordres ord
INNER JOIN Produits prod on Ord.produitID=prod.ID
INNER JOIN Clients cli on ord.ClientID=c.Id
GROUP BY cli.Locations;








