/* VIEWS */

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

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | M    | KARLA@GMAIL.COM   | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | M    | KARLA@GMAIL.COM   | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | M    | KARLA@GMAIL.COM   | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| ANTONIO | F    | ANTONIO@IG.COM    | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | M    | ELAINE@GLOBO.COM  | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

/* ------------------------------------------------------------------- */

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

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | M    | KARLA@GMAIL.COM   | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | M    | KARLA@GMAIL.COM   | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | M    | KARLA@GMAIL.COM   | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| ANTONIO | F    | ANTONIO@IG.COM    | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | M    | ELAINE@GLOBO.COM  | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

/* --------------------------------------------------------------------- */

SHOW TABLES; -- A VIEW SERÁ MOSTRADA AQUI

+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| relatorio          |
| telefone           |
+--------------------+

/* --------------------------------------------------------------------- */

SHOW VIEW; -- ESSE COMANDO NÃO EXISTE

/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;
SHOW TABLES;

+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
+--------------------+

/* --------------------------------------------------------------------- */

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

+---------+----------+--------+
| NOME    | NUMERO   | ESTADO |
+---------+----------+--------+
| JOAO    | 87866896 | RJ     |
| JOAO    | 99667587 | RJ     |
| JOAO    | 66687899 | RJ     |
| ANA     | 78989765 | SP     |
| ANA     | 99766676 | SP     |
| CARLOS  | 54768899 | RJ     |
| CARLOS  | 88687909 | RJ     |
| JORGE   | 78458743 | ES     |
| JORGE   | 56576876 | ES     |
| JORGE   | 89986668 | ES     |
| ANDRE   | 68976565 | MG     |
| ANDRE   | 99656675 | MG     |
| KARLA   | 33567765 | RJ     |
| KARLA   | 88668786 | RJ     |
| KARLA   | 55689654 | RJ     |
| DANIELE | 88687979 | RJ     |
| LORENA  | 88965676 | ES     |
| ANTONIO | 89966809 | PR     |
| ANTONIO | 88679978 | SP     |
| ELAINE  | 99655768 | PR     |
| CARMEM  | 89955665 | SP     |
| ADRIANA | 77455786 | RJ     |
| ADRIANA | 89766554 | RJ     |
| JOICE   | 77755785 | RJ     |
| JOICE   | 44522578 | RJ     |
+---------+----------+--------+

/* --------------------------------------------------------------------- */