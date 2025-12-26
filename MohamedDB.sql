CREATE DATABASE Mohamed;
USE Mohamed;

CREATE TABLE utilisateur (
 id_user INT NOT NULL  PRIMARY KEY,
 nom VARCHAR(50) NOT NULL,
 email VARCHAR(150) NOT NULL,
 d_naissance DATE NOT NULL
);

CREATE TABLE articles (
id_article INT NOT NULL PRIMARY KEY,
titre VARCHAR(100) NOT NULL,
contenue VARCHAR(900) NOT NULL,
d_pulication DATE,

id_user INT,
FOREIGN KEY(id_user) REFERENCES utilisateur(id_user),
id_comment INT,
FOREIGN KEY(id_comment) REFERENCES commentaires(id_comment)
);

CREATE TABLE commentaires(
id_comment INT PRIMARY KEY NOT NULL,
contenu VARCHAR(900) NOT NULL,
author VARCHAR(50) NOT NULL,
d_publication DATE NOT NULL

);



