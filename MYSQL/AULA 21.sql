/* STORED PROCEDURES (PROCEDIMENTOS ARMAZENADOS) */

/* DELIMITER $ -- ANTES DE TUDO, MUDAR O DELIMITADOR

CREATE PROCEDURE NOME()
BEGIN -- INICIO DO BLOCO DE PROGRAMAÇÃO

	QUALQUER PROGRAMACAO; -- DENTRO DO BLOCO, PERMANECE O DELIMITADOR ;

END
$
*/

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	
	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

/* CHAMANDO UMA PROCEDURE */

CALL NOME_EMPRESA()$ -- CHAMA PELO NOME DADO PARA A PROCEDURE

+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+

/* ------------------------------------------------------------------- */

/* PROCEDURES COM PARAMETROS */

DELIMITER ;
SELECT 10 + 10 AS CONTA;

+-------+
| CONTA |
+-------+
|    20 |
+-------+

/* ------------------------------------------------------------------- */

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
	
	SELECT 10 + 10 AS CONTA;

END
$

CALL CONTA();

+-------+
| CONTA |
+-------+
|    20 |
+-------+

/* ------------------------------------------------------------------- */

DROP PROCEDURE CONTA $ -- DELETOU A PROCEDURE

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	
	SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

CALL CONTA(100,50)$

+-------+
| CONTA |
+-------+
|   150 |
+-------+

/* ------------------------------------------------------------------- */

CALL CONTA(345634,4354)$

+--------+
| CONTA  |
+--------+
| 349988 |
+--------+

/* ------------------------------------------------------------------- */

CALL CONTA(55654,56760)$

+--------+
| CONTA  |
+--------+
| 112414 |
+--------+

/* ------------------------------------------------------------------- */

CALL CONTA(45646,6766)$

+-------+
| CONTA |
+-------+
| 52412 |
+-------+

/* ------------------------------------------------------------------- */