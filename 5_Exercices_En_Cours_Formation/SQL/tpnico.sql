-- CREATION DE LA DATABASE --
CREATE DATABASE gaumont;
USE gaumont;

-- CREATION DES TABLES PRIMAIRES --
CREATE TABLE ville (
	code_ville char(5) PRIMARY KEY check (code_ville REGEXP '[0-9]{5}'),
    --ON VERIFIE QUE LE CP EST BIEN COMPOSE DE 5 CHIFFRES -- 
    nom_ville varchar (250) not null
	)ENGINE=INNODB;
    
CREATE TABLE cinema (
	id_cinema int AUTO_INCREMENT PRIMARY KEY not null,
	nom_cinema varchar (50) not null,
    rue_cinema varchar (250) not null,
    code_ville char(5) 
    )ENGINE=INNODB;
    
CREATE TABLE salle (
	id_salle int AUTO_INCREMENT PRIMARY KEY not null,
	capacite_salle int,
    id_cinema int
    )ENGINE=INNODB;

CREATE TABLE film (
	id_film int AUTO_INCREMENT PRIMARY KEY not null,
	titre_film varchar (250) not null,
    duree_film int,
    producteur_film varchar (100)
    )ENGINE=INNODB;

-- CREATION DES TABLES D'ASSOCIATION --
CREATE TABLE projection (
	id_film int,
	id_salle int,
    date_projection date,
    entrees_projection int,
    PRIMARY KEY (id_film, id_salle)
    )ENGINE=INNODB;
    
-- CREATION DES CONTRAINTES --
ALTER TABLE projection
ADD CONSTRAINT
FOREIGN KEY (id_film)
REFERENCES film(id_film);

ALTER TABLE projection
ADD CONSTRAINT
FOREIGN KEY (id_salle)
REFERENCES salle(id_salle);

ALTER TABLE cinema
ADD CONSTRAINT
FOREIGN KEY (code_ville)
REFERENCES ville(code_ville);

ALTER TABLE salle
ADD CONSTRAINT
FOREIGN KEY (id_cinema)
REFERENCES cinema(id_cinema);


UPDATE projection
SET projection.entrees_projection = projection.entrees_projection * 2
WHERE projection.id_film IN (
    SELECT projection.id_film
    FROM projection
    INNER JOIN film
    ON projection.id_film = film.id_film
    WHERE film.titre_film = 'Pulp Fiction'
    GROUP BY projection.id_film
    );

    DELETE FROM film

DELETE FROM film

WHERE film.id_film IN (
    SELECT film.id_film
    FROM projection
    INNER JOIN film
    ON projection.id_film = film.id_film
    GROUP BY film.id_film
    HAVING DATEDIFF(CURRENT_DATE, MAX(projection.date_projection)) > 1095
    );