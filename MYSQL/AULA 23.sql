/* FUNÇÕES DE AGREGAÇÕES NUMÉRICAS */

USE PROJETO;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT(10,2),
	FEVEREIRO FLOAT(10,2),
	MARCO FLOAT(10,2)
);

INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);

+------------+----------+------+-----------+-----------+-----------+
| IDVENDEDOR | NOME     | SEXO | JANEIRO   | FEVEREIRO | MARÇO     |
+------------+----------+------+-----------+-----------+-----------+
|          1 | CARLOS   | M    |  76234.78 |  88346.87 |   5756.90 |
|          2 | MARIA    | F    |   5865.78 |   6768.87 |   4467.90 |
|          3 | ANTONIO  | M    |  78769.78 |   6685.87 |   6664.90 |
|          4 | CLARA    | F    |   5779.78 | 446886.88 |   8965.90 |
|          5 | ANDERSON | M    | 676545.75 |  77544.87 | 578665.88 |
|          6 | IVONE    | F    |  57789.78 |  44774.87 |  68665.90 |
|          7 | JOAO     | M    |   4785.78 |  66478.87 |   6887.90 |
|          8 | CELIA    | F    |  89667.78 |  57654.87 |   5755.90 |
+------------+----------+------+-----------+-----------+-----------+

/* ------------------------------------------------------------------- */

/* MAX - TRAZ O VALOR MAXIMO DE UMA COLUNA */

SELECT MAX(FEVEIRO) AS MAIOR_FEV 
FROM VENDEDORES;

+-----------+
| MAIOR_FEV |
+-----------+
| 446886.88 | -- MAIOR VALOR DO MÊS DE FEVEREIRO
+-----------+

/* ------------------------------------------------------------------- */

/* MIN - TRAZ O VALOR MÍNIMO DE UMA COLUNA */

SELECT MIN(FEVEIRO) AS MENOR_FEV 
FROM VENDEDORES;

+-----------+
| MENOR_FEV |
+-----------+
|   6685.87 | -- MENOR VALOR DO MÊS DE FEVEREIRO
+-----------+

/* ------------------------------------------------------------------- */

/* AVG - TRAZ O VALOR MÉDIO DE UMA COLUNA */

SELECT AVG(FEVEIRO) AS MEDIA_FEVEREIRO
FROM VENDEDORES;

+-----------------+
| MEDIA_FEVEREIRO |
+-----------------+
|    99392.744873 |
+-----------------+

/* ------------------------------------------------------------------- */

/* VÁRIAS FUNÇOÕES */

SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
       AVG(JANEIRO) AS MEDIA_JAN
FROM VENDEDORES;

+-----------+---------+---------------+
| MAX_JAN   | MIN_JAN | MEDIA_JAN     |
+-----------+---------+---------------+
| 676545.75 | 4785.78 | 124429.901794 |
+-----------+---------+---------------+

/* ------------------------------------------------------------------ */

/* TRUNCATE: PARÂMETRO DE CASAS DECIMAIS */

SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
       TRUNCATE(AVG(JANEIRO) ,2) AS MEDIA_JAN
FROM VENDEDORES;

+-----------+---------+-----------+
| MAX_JAN   | MIN_JAN | MEDIA_JAN |
+-----------+---------+-----------+
| 676545.75 | 4785.78 | 124429.90 | -- SOMENTE DUAS CASAS DEPOIS DA VÍRGULA
+-----------+---------+-----------+









































































