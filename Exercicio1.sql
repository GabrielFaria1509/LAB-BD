DROP DATABASE  IF EXISTS bd;
CREATE DATABASE bd;
USE bd;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE investigacao (
id INT PRIMARY KEY,
nome VARCHAR(100),
idade INT,
profissao VARCHAR(100),
cidade VARCHAR(100),
estava_na_sala_do_cofre BOOLEAN,
horario_visto TIME,
possui_alibi BOOLEAN,
quantidade_evidencias INT,
nivel_suspeita INT
);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(1,"Arthur Carvalho",45,"Empresário","São Paulo",true,"23:00:00",false,3,4);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(2,"Beatriz Moura",34,"Curadora de Arte"," Campinas",false,"22:45:00",true,1,2);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(3,"Carlos Nogueira",52,"Colecionador","São Paulo",true,"23:00:00",false,4,5);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(4,"Daniele Rocha",29,"Jornalista","Santos",false,"23:10:00",false,2,3);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(5,"Eduardo Lima",41,"Advogado","Campinas",true,"22:55:00",false,2,4);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(6,"Fernanada Alves",38,"Arquiteta","Santos",false,"22:40:00",true,0,1);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(7,"Gustavo Prado",47,"Artista","São Paulo",true,"23:00:00",false,3,4);

INSERT INTO investigacao(id,nome,idade,profissao,cidade,estava_na_sala_do_cofre,horario_visto,possui_alibi,quantidade_evidencias
,nivel_suspeita)VALUES(8,"Helena Duarte",31,"Restauradora de Arte","Campinas",false,"22:50:00",false,1,2);

##setando novos valores
UPDATE investigacao SET nivel_suspeita = 5 WHERE id = 2;
UPDATE investigacao SET cidade = "Algum lugar" WHERE nome = "Helena Duarte";

##Incrementando 
UPDATE investigacao SET nivel_suspeita = nivel_suspeita + 1 WHERE estava_na_sala_do_cofre = TRUE;

##Removendo algo 
DELETE from investigacao WHERE possui_alibi = TRUE AND quantidade_evidencias = 0 AND nivel_suspeita < 2;
DELETE from investigacao WHERE nivel_suspeita = 1;


SELECT * FROM investigacao; ## *seleciona todas colunas 

SELECT nome,profissao FROM investigacao;

SELECT * FROM investigacao ORDER BY idade DESC;

SELECT * FROM investigacao WHERE estava_na_sala_do_cofre = TRUE;

SELECT * FROM investigacao WHERE idade > 3;

SELECT * FROM investigacao WHERE idade BETWEEN  30 AND 50;

SELECT * FROM investigacao WHERE nome LIKE "A%";  ##começa com A 

SELECT * FROM investigacao WHERE nome LIKE "%O";  ##termina com O

SELECT * FROM investigacao WHERE profissao LIKE "%Art%";  ##contém art no nome da profissão

SELECT * FROM investigacao WHERE cidade IN ("Campinas","Sao Paulo","Santos");

SELECT COUNT(*) FROM investigacao;







