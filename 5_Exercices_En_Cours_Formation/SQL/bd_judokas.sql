-- creation de la base de données judokas
CREATE DATABASE judokas;
USE judokas;
-- création de la table judoka
CREATE TABLE judoka(
id_judoka INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_judoka VARCHAR(50) NOT NULL,
prenom_judoka VARCHAR(50) NOT NULL,
age_judoka INT NOT NULL,
sexe_judoka TINYINT(1) NOT NULL,
id_niveau INT NOT NULL
)engine=InnoDB;
-- création de la table niveau
CREATE TABLE niveau(
id_niveau INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
couleur_ceinture VARCHAR(50) NOT NULL
)engine=InnoDB;
-- création de la table compétition
CREATE TABLE competition(
id_competition INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
date_deb_competition DATETIME NOT NULL,
date_fin_competition DATETIME NOT NULL
)engine=InnoDB;
-- création de la table association participer
CREATE TABLE participer(
id_judoka INT NOT NULL,
id_competition INT NOT NULL,
PRIMARY KEY(id_judoka, id_competition)
)engine=InnoDB;

-- ajout des contraintes foreign key
ALTER TABLE judoka
ADD CONSTRAINT fk_posseder_niveau
FOREIGN KEY(id_niveau)
REFERENCES niveau(id_niveau);

ALTER TABLE participer
ADD CONSTRAINT fk_participer_competition
FOREIGN KEY(id_competition)
REFERENCES competition(id_competition);

ALTER TABLE participer
ADD CONSTRAINT fk_participer_judoka
FOREIGN KEY(id_judoka)
REFERENCES judoka(id_judoka);
