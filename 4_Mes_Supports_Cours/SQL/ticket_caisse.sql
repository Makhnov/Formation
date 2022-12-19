CREATE DATABASE ticket_caisse;
use ticket_caisse;

CREATE TABLE produit(
id_produit int primary key auto_increment not null,
nom_produit varchar(50) not null,
prix_produit float not null,
description_produit text not null
)engine=InnoDB;

CREATE TABLE ticket(
id_ticket int primary key auto_increment not null,
date_ticket datetime not null,
id_vendeur int not null
)engine=InnoDB;

CREATE TABLE vendeur(
id_vendeur int primary key auto_increment not null,
nom_vendeur varchar(50) not null,
prenom_vendeur varchar(50) not null
)engine=InnoDB;

CREATE TABLE ajouter(
id_ticket int not null,
id_produit int not null,
quantite_ajouter int not null,
primary key(id_ticket, id_produit)
)engine=InnoDB;

ALTER TABLE ajouter
add constraint fk_ajouter_ticket
foreign key(id_ticket)
references ticket(id_ticket);

ALTER TABLE ajouter
add constraint fk_ajouter_produit
foreign key(id_produit)
references produit(id_produit);

ALTER TABLE ticket
add constraint fk_editer_vendeur
foreign key(id_vendeur)
references vendeur(id_vendeur);