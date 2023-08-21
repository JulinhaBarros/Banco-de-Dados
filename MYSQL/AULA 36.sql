/* A 45 - CURSORES (VETORES) */

CREATE DATABASE CURSORES;
USE CURSORES;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT
);

INSERT INTO VENDEDORES VALUES(NULL,'MAFRA',32432,242334,574545);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA',65465,65443,653454);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO',12432,65356,8756);
INSERT INTO VENDEDORES VALUES(NULL,'LILIAN',4567,9676,8765);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO',3467,68756,99765);
INSERT INTO VENDEDORES VALUES(NULL,'GLORIA',54786,76889,7098);

SELECT * FROM VENDEDORES;

+------------+---------+-------+--------+--------+
| IDVENDEDOR | NOME    | JAN   | FEV    | MAR    |
+------------+---------+-------+--------+--------+
|          1 | MAFRA   | 32432 | 242334 | 574545 |
|          2 | CLARA   | 65465 |  65443 | 653454 |
|          3 | JOAO    | 12432 |  65356 |   8756 |
|          4 | LILIAN  |  4567 |   9676 |   8765 |
|          5 | ANTONIO |  3467 |  68756 |  99765 |
|          6 | GLORIA  | 54786 |  76889 |   7098 |
+------------+---------+-------+--------+--------+

/* ---------------------------------------------------------- */

SELECT NOME, (JAN+FEV+MAR) AS TOTAL FROM VENDEDORES;

+---------+--------+
| NOME    | TOTAL  |
+---------+--------+
| MAFRA   | 849311 |
| CLARA   | 784362 |
| JOAO    |  86544 |
| LILIAN  |  23008 |
| ANTONIO | 171988 |
| GLORIA  | 138773 |
+---------+--------+

/* ---------------------------------------------------------- */

SELECT NOME, (JAN+FEV+MAR) AS TOTAL, (JAN+FEV+MAR)/3 
AS MEDIA FROM VENDEDORES;

+---------+--------+-------------+
| NOME    | TOTAL  | MEDIA       |
+---------+--------+-------------+
| MAFRA   | 849311 | 283103.6667 |
| CLARA   | 784362 | 261454.0000 |
| JOAO    |  86544 |  28848.0000 |
| LILIAN  |  23008 |   7669.3333 |
| ANTONIO | 171988 |  57329.3333 |
| GLORIA  | 138773 |  46257.6667 |
+---------+--------+-------------+

/* ---------------------------------------------------------- */

CREATE TABLE VEND_TOTAL(
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT,
	TOTAL INT,
	MEDIA INT
);

DELIMITER $

CREATE PROCEDURE INSEREDADOS()
BEGIN

		DECLARE FIM INT DEFAULT 0;
		DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT;
		DECLARE VNOME VARCHAR(50);
		
		DECLARE REG CURSOR FOR( -- PARA ARMAZENAR UM DADO DE UMA QUERY
			SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
		);
		
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1; -- BREAK DO LOOP
		
		OPEN REG;
		
		REPEAT
		
			FETCH REG INTO VNOME, VAR1, VAR2, VAR3; -- TRAZ O PRÓXIMO CASO (REG)
			IF NOT FIM THEN
			
				SET VTOTAL = VAR1 + VAR2 + VAR3;
				SET VMEDIA = VTOTAL / 3;
				
				INSERT INTO VEND_TOTAL VALUES(VNOME,VAR1,VAR2,VAR3,VTOTAL,VMEDIA);
				
			END IF;
			
		UNTIL FIM END REPEAT;
		
		CLOSE REG;
END
$

DELIMITER ;

SELECT * FROM VENDEDORES;

+------------+---------+-------+--------+--------+
| IDVENDEDOR | NOME    | JAN   | FEV    | MAR    |
+------------+---------+-------+--------+--------+
|          1 | MAFRA   | 32432 | 242334 | 574545 |
|          2 | CLARA   | 65465 |  65443 | 653454 |
|          3 | JOAO    | 12432 |  65356 |   8756 |
|          4 | LILIAN  |  4567 |   9676 |   8765 |
|          5 | ANTONIO |  3467 |  68756 |  99765 |
|          6 | GLORIA  | 54786 |  76889 |   7098 |
+------------+---------+-------+--------+--------+

/* ---------------------------------------------------------- */

CALL INSEREDADOS();

INSERT INTO VENDEDORES VALUES(NULL,'LETICIA',656,3546,234545);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA',6766,56556,65454);

SELECT * FROM VENDEDORES;
SELECT * FROM VEND_TOTAL;

+---------+-------+--------+--------+--------+--------+
| NOME    | JAN   | FEV    | MAR    | TOTAL  | MEDIA  |
+---------+-------+--------+--------+--------+--------+
| MAFRA   | 32432 | 242334 | 574545 | 849311 | 283104 |
| CLARA   | 65465 |  65443 | 653454 | 784362 | 261454 |
| JOAO    | 12432 |  65356 |   8756 |  86544 |  28848 |
| LILIAN  |  4567 |   9676 |   8765 |  23008 |   7669 |
| ANTONIO |  3467 |  68756 |  99765 | 171988 |  57329 |
| GLORIA  | 54786 |  76889 |   7098 | 138773 |  46258 |
+---------+-------+--------+--------+--------+--------+

/* ---------------------------------------------------------- */

DELETE FROM VEND_TOTAL;

CALL INSEREDADOS();

/* A 46 TRIGGERS COM VARIAVEIS */

DELIMITER $

CREATE TRIGGER CADTOTAL
BEFORE INSERT ON VENDEDORES
FOR EACH ROW
BEGIN
		DECLARE VTOTAL, VMEDIA INT;
		
		SET VTOTAL := NEW.JAN + NEW.FEV + NEW.MAR;
		SET VMEDIA := (NEW.JAN + NEW.FEV + NEW.MAR)/3;
		
		INSERT INTO VEND_TOTAL VALUES(NEW.NOME,NEW.JAN,NEW.FEV,NEW.MAR,VTOTAL,VMEDIA);

END
$

DELIMITER ;

INSERT INTO VENDEDORES VALUES(NULL,'JULIO',9999,9999,9999);
						  
SELECT * FROM VENDEDORES;
SELECT * FROM VEND_TOTAL;