DROP DATABASE  IF EXISTS streaming_db;
CREATE DATABASE streaming_db;
USE streaming_db;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Filme(
titulo VARCHAR(20),
genero VARCHAR(30),
id INT AUTO_INCREMENT PRIMARY KEY,
ano_lancamento INT NOT NULL  
);

ALTER TABLE Filme ADD classificacao_etaria INT;  ##coloca nova coluna
ALTER TABLE Filme MODIFY titulo VARCHAR(60);

INSERT INTO Filme(titulo,genero,id,ano_lancamento,classificacao_etaria)VALUES("Deu a louca na chapeuzinho","Comédia",1,2005,10);
INSERT INTO Filme(titulo,genero,id,ano_lancamento,classificacao_etaria)VALUES("A hora do rush","Comédia",2,1998,14);
INSERT INTO Filme(titulo,genero,id,ano_lancamento,classificacao_etaria)VALUES("Deadpool","Comédia/Ação/Herói",3,2016,18);

 UPDATE Filme SET genero = "ação" WHERE titulo = "Deadpool";
 DELETE from Filme WHERE id = 1;
 
 SELECT * FROM Filme;  ##seleciona todos dados de filme
 
 SHOW TABLES;  ##mostra dados tabela
 TRUNCATE TABLE Filme; ##remove registros
