CREATE DATABASE judokas;
use judokas;

CREATE TABLE judoka(
id_judoka int primary key auto_increment not null,
nom_judoka varchar(50) not null,
prenom_judoka varchar(50) not null,
age_judoka int not null,
sexe_judoka tinyint(1) not null,
id_niveau int not null
)engine=InnoDB;

CREATE TABLE niveau(
id_niveau int primary key auto_increment not null,
couleur_ceinture varchar(50) not null
)engine=InnoDB;

CREATE TABLE competition(
id_competition int primary key auto_increment not null,
date_deb_competition datetime not null,
dat_fin_competition datetime not null
)engine=InnoDB;

CREATE TABLE participer(
id_judoka int not null,
id_competition int not null,
primary key(id_judoka, id_competition)
)engine=InnoDB;

ALTER TABLE judoka
add constraint fk_posseder_niveau
foreign key(id_niveau)
references niveau(id_niveau);

ALTER TABLE participer
add constraint fk_participer_competition
foreign key(id_competition)
references competition(id_competition);

ALTER TABLE participer
add constraint fk_participer_judoka
foreign key(id_judoka)
references judoka(id_judoka);
