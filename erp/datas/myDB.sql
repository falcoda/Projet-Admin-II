CREATE DATABASE;/*Création de la base de donnée*/
USE myDb;
CREATE USER 'coda' IDENTIFIED BY 'test'; /*utiliser la base de donnée*/
GRANT ALL PRIVILEGES ON * . * TO 'coda';
FLUSH PRIVILEGES;

CREATE TABLE `objets` (`name` varchar(40) NOT NULL ,`prix` INTEGER NOT NULL); /*création de la table*/
INSERT INTO /*insertion des valeurs */
  `objets` (`name`,`prix`) 
VALUES /*ajout des valeurs */
  ('cheval de bois', 45),
  ('siflet en bois', 10),
  ('dés en bois', 3) ;
