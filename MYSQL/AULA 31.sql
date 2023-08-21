CREATE DATABASE AULA31;

CREATE TABLE USUARIO (

    IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30),
    lOGIN VARCHAR (30),
    SENHA VARCHAR (100)

);

CREATE TABLE BKP_USUARIO (

    IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDUSUARIO INT,
    NOME VARCHAR (30),
    LOGIN VARCHAR (30)

);


/* CRIANDO A TRIGGER */

DELIMITER $

CREATE TRIGGER BACKUP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW 
BEGIN
        
		INSERT INTO BKP_USUARIO VALUES(NULL,OLD.IDUSUARIO,OLD.NOME,OLD.LOGIN);
		
		
END
$

INSERT INTO USUARIO VALUES (NULL,'ANDRADE','ANDRADE2009','HEXACAMPEAO');

SELECT * FROM USUARIO;

+-----------+---------+-------------+-------------+
| IDUSUARIO | NOME    | lOGIN       | SENHA       |
+-----------+---------+-------------+-------------+
|         1 | ANDRADE | ANDRADE2009 | HEXACAMPEAO |
+-----------+---------+-------------+-------------+

/* ----------------------------------------------------------------------------- */

DELETE FROM USUARIO 
WHERE IDUSUARIO = 1;

SELECT * FROM BKP_USUARIO;

+----------+-----------+---------+-------------+
| IDBACKUP | IDUSUARIO | NOME    | LOGIN       |
+----------+-----------+---------+-------------+
|        1 |         1 | ANDRADE | ANDRADE2009 |
+----------+-----------+---------+-------------+

/* ----------------------------------------------------------------------------- */

