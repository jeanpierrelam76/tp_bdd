CREATE TABLE proprietaire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (50) ,
    prenom VARCHAR (50) ,
    adresse VARCHAR (100) ,
    telephone VARCHAR (50) 
    );


CREATE TABLE biens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    taille SMALLINT,
    adresse VARCHAR (100),
    prix INT
    );

CREATE TABLE gestion (
    id_proprietaire INTEGER,
    id_biens INTEGER,
    dt_debut DATETIME ,
    dt_fin DATETIME ,
    pourcentage DECIMAL,
    FOREIGN KEY (id_proprietaire) REFERENCES proprietaire(id),
    FOREIGN KEY (id_biens) REFERENCES biens(id)
    );



CREATE TABLE locataire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (50),
    prenom VARCHAR (50),
    adresse VARCHAR (100),
    telephone VARCHAR (50)
    );
    

CREATE TABLE bail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    bail SMALLINT
    );

CREATE TABLE locataire_bail (
    id_locataire INTEGER,
    id_bail INTEGER,
    dt_debut DATETIME ,
    dt_fin DATETIME ,
    FOREIGN KEY (id_locataire) REFERENCES proprietaire(id),
    FOREIGN KEY (id_bail) REFERENCES bail(id)
    );
    

    