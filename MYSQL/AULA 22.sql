/* Recap */

CREATE DATABASE BARROS;

USE BARROS;

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

+------------------+
| Tables_in_barros |
+------------------+
| alunos           |
+------------------+

/* ------------------------------------------------------------------- */

/* LIMPANDO O BANCO E COMEÇANDO DO ZERO */

DROP DATABASE COMERCIO;
DROP DATABASE EXEMPLO;
DROP DATABASE BARROS;
DROP DATABASE PROJETO;
DROP DATABASE PROJECT;
DROP DATABASE LIVRARIA;

/* PROCEDURES */

CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL, -- NÃO PODE DEIXAR NULO
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

+-------------------+
| Tables_in_projeto |
+-------------------+
| cursos            |
+-------------------+

/* ------------------------------------------------------------------- */

INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCOS DE DADOS',40,700.00);

SELECT * FROM CURSOS;

+---------+--------------------------------+-------+--------+
| IDCURSO | NOME                           | HORAS | VALOR  |
+---------+--------------------------------+-------+--------+
|       1 | JAVA                           |    30 | 500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 | 700.00 |
+---------+--------------------------------+-------+--------+

/* ------------------------------------------------------------------- */

DELIMITER $

STATUS

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(30),
						   P_PRECO  FLOAT(10,2))
BEGIN
	
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
$

DELIMITER ; -- SEMPRE VOLTAR AO DELIMITADOR ORIGINAL

/* CHAMANDO A PROCEDURE E ACRESCENTANDO DADOS */

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);

SELECT * FROM CURSOS;

+---------+--------------------------------+-------+---------+
| IDCURSO | NOME                           | HORAS | VALOR   |
+---------+--------------------------------+-------+---------+
|       1 | JAVA                           |    30 |  500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 |  700.00 |
|       3 | BI SQL SERVER                  |    35 | 3000.00 |
|       4 | POWER BI                       |    20 | 1000.00 |
|       5 | TABLEAU                        |    30 | 1200.00 |
+---------+--------------------------------+-------+---------+

/* ------------------------------------------------------------------- */

/* CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS */

SELECT NOME, HORAS, VALOR FROM CURSOS
WHERE IDCURSO = 1;

+------+-------+--------+
| NOME | HORAS | VALOR  |
+------+-------+--------+
| JAVA |    30 | 500.00 |
+------+-------+--------+

/* ------------------------------------------------------------------- */

DELIMITER #

CREATE PROCEDURE LE_CURSO( P_IDCURSO INT )

BEGIN

                  SELECT NOME, HORAS, VALOR FROM CURSOS
                   WHERE IDCURSO =  P_IDCURSO;

END

#

DELIMITER ;

CALL LE_CURSO( 2 );

+--------------------------------+-------+--------+
| NOME                           | HORAS | VALOR  |
+--------------------------------+-------+--------+
| FUNDAMENTOS DE BANCOS DE DADOS |    40 | 700.00 |
+--------------------------------+-------+--------+

/* ------------------------------------------------------------------- */