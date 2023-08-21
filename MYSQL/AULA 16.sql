/* FUNÇÕES */

/* IFNULL (PARÂMETRO 1 [QUAL COLUNA SELECIONADA], PARÂMETRO 2 [MENSAGEM A SER MOSTRADA] */

/* NOME, EMAIL, NÚMERO, ESTADO */

SELECT C.NOME, C.EMAIL, E.ESTADO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896 |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587 |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 99656675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88687979 |
| LORENA  | NULL              | ES     | 88965676 |
| ANTONIO | ANTONIO@IG.COM    | PR     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM  | PR     | 99655768 |
| CARMEM  | CARMEM@IG.COM     | SP     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+

/* ------------------------------------------------------------------- */

IFNULL()

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'NAO TEM EMAIL'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

+---------+---------------------------------+--------+----------+
| NOME    | IFNULL(C.EMAIL,'NAO TEM EMAIL') | ESTADO | NUMERO   |
+---------+---------------------------------+--------+----------+
| JOAO    | JOAOA@IG.COM                    | RJ     | 87866896 |
| JOAO    | JOAOA@IG.COM                    | RJ     | 99667587 |
| JOAO    | JOAOA@IG.COM                    | RJ     | 66687899 |
| ANA     | ANA@IG.COM                      | SP     | 78989765 |
| ANA     | ANA@IG.COM                      | SP     | 99766676 |
| CARLOS  | CARLOSA@IG.COM                  | RJ     | 54768899 |
| CARLOS  | CARLOSA@IG.COM                  | RJ     | 88687909 |
| JORGE   | JORGE@IG.COM                    | ES     | 78458743 |
| JORGE   | JORGE@IG.COM                    | ES     | 56576876 |
| JORGE   | JORGE@IG.COM                    | ES     | 89986668 |
| ANDRE   | ANDRE@GLOBO.COM                 | MG     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM                 | MG     | 99656675 |
| KARLA   | KARLA@GMAIL.COM                 | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM                 | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM                 | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM               | RJ     | 88687979 |
| LORENA  | NAO TEM EMAIL                   | ES     | 88965676 |
| ANTONIO | ANTONIO@IG.COM                  | PR     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM                 | SP     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM                | PR     | 99655768 |
| CARMEM  | CARMEM@IG.COM                   | SP     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM                 | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM                 | RJ     | 44522578 |
+---------+---------------------------------+--------+----------+

/* ------------------------------------------------------------------- */

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************') AS "E-MAIL", 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

+---------+-------------------+--------+----------+
| NOME    | E-MAIL            | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896 |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587 |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 99656675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88687979 |
| LORENA  | ************      | ES     | 88965676 |
| ANTONIO | ANTONIO@IG.COM    | PR     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM  | PR     | 99655768 |
| CARMEM  | CARMEM@IG.COM     | SP     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+

/* ------------------------------------------------------------------- */

/* VIEW */

SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

CREATE VIEW RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM RELATORIO;

SHOW TABLES;
SHOW DATABASES;
SHOW VIEW; -- NAO EXISTE

/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;

/* INSERINDO UM PREFIXO */

CREATE VIEW V_RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;

/* UPDATE, INSERT E DELETE - DML */

INSERT INTO V_RELATORIO VALUES(
'ANDREIA','F','ANDREIA@UOL.COM.BR','CEL','873547864','CENTRO','VITORIA','ES'
);

ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'

DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';

/* É PERMITIDO FAZER UPDATES EM VIEWS COM JOIN */

UPDATE V_RELATORIO SET NOME = 'JOSE' WHERE NOME = 'JORGE';

CREATE TABLE JOGADORES(
	IDJOGADOR INT,
	NOME VARCHAR(30),
	ESTADO CHAR(2)
);

INSERT INTO JOGADORES VALUES(1,'GUERRERO','RS');
INSERT INTO JOGADORES VALUES(2,'GABIGOL','RJ');
INSERT INTO JOGADORES VALUES(3,'GANSO','RJ');
INSERT INTO JOGADORES VALUES(4,'NENÊ', 'RJ');
INSERT INTO JOGADORES VALUES(5,'LOVE','SP');

CREATE VIEW V_JOGADORES AS
SELECT NOME, ESTADO
FROM JOGADORES;

SELECT * FROM V_JOGADORES;

DELETE FROM V_JOGADORES
WHERE NOME = 'GUERRERO';

INSERT INTO V_JOGADORES VALUES('GUERRERO','RS');

SELECT * FROM JOGADORES;

mysql> SELECT * FROM JOGADORES;
+-----------+----------+--------+
| IDJOGADOR | NOME     | ESTADO |
+-----------+----------+--------+
|         2 | GABIGOL  | RJ     |
|         3 | GANSO    | RJ     |
|         4 | NENÊ     | RJ     |
|         5 | LOVE     | SP     |
|      NULL | GUERRERO | RS     |
+-----------+----------+--------+

SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';

/* ORDER BY */

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE'); 

SELECT * FROM ALUNOS
ORDER BY NUMERO;

SELECT * FROM ALUNOS
ORDER BY 1;

SELECT * FROM ALUNOS
ORDER BY 2;

/* ORDENANDO POR MAIS DE UMA COLUNA */

SELECT * FROM ALUNOS
ORDER BY 1;

SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;

SELECT * FROM ALUNOS
ORDER BY 1, 2;

/* MESCLANDO ORDER BY COM PROJECAO */

SELECT NOME FROM ALUNOS
ORDER BY 1, 2;

SELECT NOME FROM ALUNOS
ORDER BY NUMERO, NOME;


/* ORDER BY DESC / ASC */

SELECT * FROM ALUNOS
ORDER BY 1, 2;

SELECT * FROM ALUNOS
ORDER BY 1 ASC;

SELECT * FROM ALUNOS
ORDER BY 1 DESC;

SELECT * FROM ALUNOS
ORDER BY 1, 2 DESC;

SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;

/* ORDENANDO COM JOINS */


SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;

SHOW TABLES;

SELECT * FROM V_RELATORIO
ORDER BY 1;

/* Delimitador */

SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1

STATUS

DELIMITER $

SELECT * FROM V_RELATORIO;

DELIMITER  @

DELIMITER@

DELIMITER @ @

DELIMITER ;

/* STORED PROCEDURES */

SELECT 'MAFRA';

DELIMITER $

CREATE PROCEDURE NOME()
BEGIN

	QUALQUER PROGRAMACAO;

END
$


DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	
	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

/* CHAMANDO UMA PROCEDURE */


CALL NOME_EMPRESA()$

DELIMITER ;

CALL NOME_EMPRESA();

/* PROCEDURES COM PARAMETROS */

SELECT 10 + 10 AS CONTA;

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
	
	SELECT 10 + 10 AS CONTA;

END
$

CALL CONTA();

DROP PROCEDURE CONTA;

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	
	SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

CALL CONTA(100,50)$
CALL CONTA(345634,4354)$
CALL CONTA(55654,56760)$
CALL CONTA(45646,6766)$

/* Recap */

CREATE DATABASE MAFRA;

USE MAFRA;

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

DROP DATABASE COMERCIO;
DROP DATABASE EXEMPLO;
DROP DATABASE MAFRA;
DROP DATABASE PROJETO;
DROP DATABASE TESTE;


/* PROCEDURES */


CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCOS DE DADOS',40,700.00);

SELECT * FROM CURSOS;

DELIMITER #

STATUS

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(30),
						   P_PRECO  FLOAT(10,2))
BEGIN
	
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);

/* CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS */

/* QUANTIDADE DE HOMENS E MULHERES */


/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */