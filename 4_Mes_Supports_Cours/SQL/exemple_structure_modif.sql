create database lourdes;
use lourdes;
create table test(
id_test int primary key auto_increment not null,
nom_test varchar(50) not null,
date_test date not null
)engine=InnoDB;

-- ajouter une colonne
ALTER TABLE test
ADD password_test varchar(50);

-- modifier une colonne
ALTER TABLE test
MODIFY COLUMN password_test INT NOT NULL;

-- suppression de colonne
ALTER TABLE test
DROP COLUMN password_test;
-- supprimer une table
DROP TABLE test;
-- supprimer une base de données
DROP DATABASE lourdes;

-- vider une table (tout les enregistrements)
TRUNCATE TABLE test;