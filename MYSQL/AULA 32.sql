CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO (

    ODPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30),
    VALOR FLOAT (10,2)


);

STATUS

CREATE DATABASE BACKUP;

USE BACKUP;


CREATE TABLE BKP_PRODUTO (

    IDBKP INT PRIMARY KEY AUTO_INCREMENT,
    ODPRODUTO INT,
	NOME VARCHAR (30),
    VALOR FLOAT (10,2)


);

USE LOJA;

INSERT INTO BACKUP.BKP_PRODUTO VALUES (NULL,1000,'TESTE',0.0);

SELECT * FROM BACKUP.BKP_PRODUTO;

+-------+-----------+-------+-------+
| IDBKP | ODPRODUTO | NOME  | VALOR |
+-------+-----------+-------+-------+
|     1 |      1000 | TESTE |  0.00 |
+-------+-----------+-------+-------+

/* ----------------------------------------------------------------------------- */

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO
BEFORE INSERT ON PRODUTO
FOR EACH ROW
BEGIN

            INSERT INTO BACKUP.BKP_PRODUTO VALUES (NULL,NEW.ODPRODUTO,NEW.NOME,
			NEW.VALOR);
			
			
END
$

DELIMITER ;

INSERT PRODUTO VALUES (NULL,'LIVRO MODELAGEM',50.00);
INSERT PRODUTO VALUES (NULL,'LIVRO BI',80.00);
INSERT PRODUTO VALUES (NULL,'LIVRO ORACLE',70.00);
INSERT PRODUTO VALUES (NULL,'LIVRO SQL SERVER',100.00);

SELECT * FROM PRODUTO; -- BANCO LOJA

+-----------+------------------+--------+
| ODPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+

/* ---------------------------------------------------------------------------- */

SELECT * FROM BACKUP.BKP_PRODUTO; -- BANCO BACKUP

+-------+-----------+------------------+--------+
| IDBKP | ODPRODUTO | NOME             | VALOR  |
+-------+-----------+------------------+--------+
|     1 |      1000 | TESTE            |   0.00 |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 |
|     3 |         0 | LIVRO BI         |  80.00 |
|     4 |         0 | LIVRO ORACLE     |  70.00 |
|     5 |         0 | LIVRO SQL SERVER | 100.00 |
+-------+-----------+------------------+--------+

/* ---------------------------------------------------------------------------- */

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN

            INSERT INTO BACKUP.BKP_PRODUTO VALUES (NULL,OLD.ODPRODUTO,OLD.NOME,
			OLD.VALOR);
			
			
END
$

DELIMITER ;

DELETE FROM PRODUTO 
WHERE ODPRODUTO = 2;













