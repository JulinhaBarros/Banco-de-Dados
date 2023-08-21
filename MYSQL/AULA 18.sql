/* UPDATE, INSERT E DELETE - DML */

INSERT INTO V_RELATORIO VALUES(
'ANDREIA','F','ANDREIA@UOL.COM.BR','CEL','873547864','CENTRO','VITORIA','ES'
);

ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'

DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';

/* É PERMITIDO FAZER UPDATES EM VIEWS COM JOIN */

UPDATE V_RELATORIO SET NOME = 'JOSE' WHERE NOME = 'JORGE';

SELECT * FROM RELATORIO;

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | M    | KARLA@GMAIL.COM   | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | M    | KARLA@GMAIL.COM   | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | M    | KARLA@GMAIL.COM   | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
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

+----------+--------+
| NOME     | ESTADO |
+----------+--------+
| GUERRERO | RS     |
| GABIGOL  | RJ     |
| GANSO    | RJ     |
| NENÊ     | RJ     |
| LOVE     | SP     |
+----------+--------+

/* --------------------------------------------------------------------- */

DELETE FROM V_JOGADORES
WHERE NOME = 'GUERRERO';

SELECT * FROM JOGADORES;

+-----------+---------+--------+
| IDJOGADOR | NOME    | ESTADO |
+-----------+---------+--------+
|         2 | GABIGOL | RJ     |
|         3 | GANSO   | RJ     |
|         4 | NENÊ    | RJ     |
|         5 | LOVE    | SP     |
+-----------+---------+--------+

/* --------------------------------------------------------------------- */

INSERT INTO V_JOGADORES VALUES('GUERRERO','RS');

SELECT * FROM JOGADORES;

+-----------+----------+--------+
| IDJOGADOR | NOME     | ESTADO |
+-----------+----------+--------+
|         2 | GABIGOL  | RJ     |
|         3 | GANSO    | RJ     |
|         4 | NENÊ     | RJ     |
|         5 | LOVE     | SP     |
|      NULL | GUERRERO | RS     |
+-----------+----------+--------+

/* --------------------------------------------------------------------- */

SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';

+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| ANTONIO | F    | ANTONIO@IG.COM    | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

/* --------------------------------------------------------------------- */