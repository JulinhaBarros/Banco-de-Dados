CREATE DATABASE LIVRARIA;

CREATE TABLE LIVROS (
    
	LIVRO  VARCHAR (200),
	AUTOR VARCHAR (200),
	SEXO CHAR (1),
	PÁGINAS INT (5),
	EDITORA VARCHAR (30),
	VALOR FLOAT (10,2),   /* PARA NÚMEROS QUEBRADOS */
	UF CHAR (2),
	ANO INT (4)

);


/* VERIFICANDO OS BANCOS */

SHOW DATABASE;


/* CONECTANDO AO BANCO */

USE LIVRARIA;

INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49,'RJ',2009);					
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcântara','M',200,'Larson',130,'RS',2018);
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);


SELECT * FROM LIVROS; /* TRATAR TODOS OS DADOS */


/* TAZER O NOME DO LIVRO E A EDITORA */

SELECT LIVRO, EDITORA
FROM LIVROS;


/* TTRAZER OS LIVROS E A UF DOS LIVROS (AUTORES DO SEXO MASCULINO) */

SELECT AUTOR, SEXO, LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';


/* TRAZER O NOME DO LIVRO E O NÚMERO DE PÁGINAS (AUTORES DO SEXO FEMININO) */

SELECT AUTOR, SEXO, LIVRO, PÁGINAS
FROM LIVROS
WHERE SEXO = 'F';


/* TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SÃO PAUJLO */

SELECT UF, LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';


