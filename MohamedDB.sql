CREATE DATABASE Mohamed;
USE Mohamed;

CREATE TABLE utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    d_naissance DATE NOT NULL
)COMMENT = 'Table de utilisateur';

-- Table articles
CREATE TABLE articles (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(100) NOT NULL,
    contenu VARCHAR(900) NOT NULL,
    d_publication DATE,
    id_utilisateur INT,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
)COMMENT = 'Table de article';


CREATE TABLE commentaires (
    id_comment INT AUTO_INCREMENT PRIMARY KEY,
    contenu VARCHAR(900) NOT NULL,
    author VARCHAR(50) NOT NULL,
    d_publication DATE NOT NULL,
    id_article INT,
    FOREIGN KEY (id_article) REFERENCES articles(id_article)
) COMMENT = 'Table de commentaire';

CREATE INDEX idx_utilisateur_email ON utilisateur (email);
CREATE INDEX idx_articles_utilisateur ON articles (id_utilisateur);
CREATE INDEX idx_commentaire_article ON commentaires (id_article);

INSERT INTO utilisateur (nom, email, d_naissance) VALUES
('Mohamed', 'mohamed@gmail.com', '2003-02-15'),
('Amina', 'amina@gmail.com', '2004-05-20'),
('Youssef', 'youssef@gmail.com', '2003-11-08');


INSERT INTO articles (titre, contenu, d_publication, id_utilisateur) VALUES
('Premier Article', 'Ceci est le contenu du premier article.', '2024-01-10', 1),
('Deuxieme Article', 'Ceci est le contenu du deuxieme article.', '2024-02-15', 2),
('Troisieme Article', 'Ceci est le contenu du troisieme article.', '2024-03-20', 1);

INSERT INTO commentaires (contenu, author, d_publication, id_article) VALUES
('Excellent article!', 'Said', '2024-01-11', 1),
('Merci pour ces informations.', 'Laila', '2024-02-16', 2),
('bien article', 'Omar', '2024-03-21', 3);
