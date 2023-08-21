/* DML: DATA MANIPULATION LANGUAGE */

/* INSERT */

INSERT INTO CLIENTE VALUES (NULL,'PAULA','M',NULL,'77437493');
INSERT INTO ENDEREÇO VALUES (NULL,'RUA JOQUIM SILVA','ALVORADA','NITERÓI','RJ',7);

SELECT * FROM CLIENTE;

/* FILTROS */

SELECT * FROM CLIENTE
WHERE SEXO = 'M';

+-----------+--------+------+----------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL          | CPF         |
+-----------+--------+------+----------------+-------------+
|         1 | JOAO   | M    | JOAOA@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOSA@IG.COM | 5464553466  |
|         5 | JORGE  | M    | JORGE@IG.COM   | 8756547688  |
|         6 | CELIA  | M    | JCELIA@IG.COM  | 5767876889  |
|         7 | PAULA  | M    | NULL           | 77437493    |
+-----------+--------+------+----------------+-------------+

/* --------------------------------------------------------------------- */

/* UPDATE */

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 7;

+-----------+-------+------+-------+----------+
| IDCLIENTE | NOME  | SEXO | EMAIL | CPF      |
+-----------+-------+------+-------+----------+
|         7 | PAULA | M    | NULL  | 77437493 |
+-----------+-------+------+-------+----------+

/* ------------------------------------------------------------------- */

UPDATE CLIENTE 
SET SEXO = 'F'
WHERE IDCLIENTE = 7;

SELECT * FROM CLIENTE;

+-----------+--------+------+----------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL          | CPF         |
+-----------+--------+------+----------------+-------------+
|         1 | JOAO   | M    | JOAOA@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOSA@IG.COM | 5464553466  |
|         3 | ANA    | F    | ANA@IG.COM     | 456545678   |
|         4 | CLARA  | F    | NULL           | 5687766856  |
|         5 | JORGE  | M    | JORGE@IG.COM   | 8756547688  |
|         6 | CELIA  | M    | JCELIA@IG.COM  | 5767876889  |
|         7 | PAULA  | F    | NULL           | 77437493    |
+-----------+--------+------+----------------+-------------+

/* ------------------------------------------------------------------- */

/* DELETE */ 

INSERT INTO CLIENTE VALUES (NULL,'XXX','M',NULL,'77437493');

SELECT * FROM CLIENTE;
WHERE IDCLIENTE = 8;

DELETE FROM CLIENTE 
WHERE IDCLIENTE = 8;

+-----------+--------+------+----------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL          | CPF         |
+-----------+--------+------+----------------+-------------+
|         1 | JOAO   | M    | JOAOA@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOSA@IG.COM | 5464553466  |
|         3 | ANA    | F    | ANA@IG.COM     | 456545678   |
|         4 | CLARA  | F    | NULL           | 5687766856  |
|         5 | JORGE  | M    | JORGE@IG.COM   | 8756547688  |
|         6 | CELIA  | M    | JCELIA@IG.COM  | 5767876889  |
|         7 | PAULA  | F    | NULL           | 77437493    |
+-----------+--------+------+----------------+-------------+

/* ------------------------------------------------------------------- */

