/* ALTERANDO TABELAS */

CREATE TABLE TABELA (

    COLUNA1 VARCHAR (30),
    COLUNA2 VARCHAR (30),
    COLUNA3 VARCHAR (30)

);


/* ADICIONANDO UMA PRIMARY KEY */

ALTER TABLE TABELA
ADD PRIMARY KEY (COLUNA1);

DESC TABELA;

+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

/* ------------------------------------------------------------------------------ */

/* ADICINANDO UMA COLUNA SEM POSIÇÃO (ULTIMA POSIÇÃO) */

ALTER TABLE TABELA
ADD COLUNA VARCHAR (30);

+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

/* ------------------------------------------------------------------------------ */

ALTER TABLE TABELA
ADD COLUNA100 INT (11);

+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | INT (11)    | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

/* ------------------------------------------------------------------------------ */

/* ADICIONANDO UMA COLUNA COM POSIÇÃO */

ALTER TABLE TABELA 
ADD COLUNA4 VARCHAR (30) NOT NULL UNIQUE
AFTER COLUNA3; -- COMANDO DE ONDE ADICIONAR A COLUNA 

+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | INT (11)    | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
 /* ---------------------------------------------------------------------------- */

/* MODIFICANDO O TIPO DE UM CAMPO */

ALTER TABLE TABELA
MODIFY COLUNA2 DATE NOT NULL;

+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

/* ------------------------------------------------------------------------------ */

ALTER TABLE TABELA
MODIFY COLUNA100 INT (11) NOT NULL;


/* RENOMEANDO O NOME DA TABELA */

ALTER TABLE TABELA
RENAME PESSOA;

DESC PESSOA;

CREATE TABLE TIME (

    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR (30),
	ID_PESSOA VARCHAR (30)
	
);

 /* FOREIGN KEY */
 
 ALTER TABLE TIME
 ADD FOREIGN KEY (ID_PESSOA)
 REFERENCES PESSOA (COLUNA1);

DESC TIME;

+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int(11)     | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  | MUL | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

/* ------------------------------------------------------------------------------ */

/* VERIFICAR AS CHAVES */

SHOW CREATE TABLE TIME;

+-------+----------------------------------------------------------------------------+
| Table | Create Table                                                               |                                                                                                                                                                                                                                                       |
+-------+----------------------------------------------------------------------------+
| TIME  | CREATE TABLE `time` (
|  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
|  `TIME` varchar(30) DEFAULT NULL,
|  `ID_PESSOA` varchar(30) DEFAULT NULL,
| PRIMARY KEY (`IDTIME`),
|  KEY `ID_PESSOA` (`ID_PESSOA`),
|  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+-------+----------------------------------------------------------------------------+

/* ------------------------------------------------------------------------------ */