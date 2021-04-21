CREATE DATABASE;
USE myDb;
CREATE USER 'coda' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON * . * TO 'coda';

CREATE TABLE `objets` (`name` varchar(40) NOT NULL ,`prix` INTEGER NOT NULL);
INSERT INTO
  `objets` (`name`,`prix`) 
VALUES
  ('cheval de bois', 45),
  ('siflet en bois', 10),
  ('dés en bois', 3) ;
