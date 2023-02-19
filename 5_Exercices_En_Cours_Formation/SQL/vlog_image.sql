CREATE DATABASE vlog_images;
use vlog_images;

CREATE TABLE article(
id_article int primary key auto_increment not null,
nom_article varchar(50) not null,
contenu_article text not null,
date_article datetime not null,
id_utilisateur int not null
)engine=InnoDB;

CREATE TABLE utilisateur(
id_utilisateur int primary key auto_increment not null,
nom_utilisateur varchar(50) not null,
prenom_utilisateur varchar(50) not null,
email_utilisateur varchar(100) not null,
id_role_utilisateur int not null,
id_image int not null
)engine=InnoDB;

CREATE TABLE image(
id_image int primary key auto_increment not null,
nom_image varchar(50) not null,
url_image varchar(100) not null,
id_article int not null
)engine=InnoDB;

CREATE TABLE commentaire(
id_commentaire int primary key auto_increment not null,
contenu_commentaire varchar(50) not null,
date_commentaire datetime not null,
id_article int not null,
id_utilisateur int not null
)engine=InnoDB;

CREATE TABLE categorie(
id_categorie int primary key auto_increment not null,
nom_categorie varchar(50) not null
)engine=InnoDB;

CREATE TABLE role_utilisateur(
id_role_utilisateur int primary key auto_increment not null,
nom_role_utilisateur varchar(50) not null
)engine=InnoDB;

CREATE TABLE filtrer(
id_categorie int not null,
id_article int not null,
primary key(id_categorie, id_article)
)engine=InnoDB;

ALTER TABLE image
add constraint fk_illustrer_article
foreign key(id_article)
references article(id_article);

ALTER TABLE article
add constraint fk_rediger_utilisateur
foreign key(id_utilisateur)
references utilisateur(id_utilisateur);

ALTER TABLE utilisateur
add constraint fk_completer_image
foreign key(id_image)
references image(id_image);

ALTER TABLE utilisateur
add constraint fk_posseder_role_utilisateur
foreign key(id_role_utilisateur)
references role_utilisateur(id_role_utilisateur);

ALTER TABLE commentaire
add constraint fk_agrementer_article
foreign key(id_article)
references article(id_article);

ALTER TABLE commentaire
add constraint fk_ecrire_utilisateur
foreign key(id_utilisateur)
references utilisateur(id_utilisateur);

ALTER TABLE filtrer
add constraint fk_filtrer_article
foreign key(id_article)
references article(id_article);

ALTER TABLE filtrer
add constraint fk_filtrer_categorie
foreign key(id_categorie)
references categorie(id_categorie);