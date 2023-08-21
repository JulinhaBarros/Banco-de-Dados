/* AGREGANDO VALORES - SUM() */

SELECT SUM(JANEIRO) AS TOTAL_JANEIRO
FROM VENDEDORES;

+---------------+
| TOTAL_JANEIRO |
+---------------+
|     995439.21 |
+---------------+

/* ------------------------------------------------------------------- */

SELECT SUM(JANEIRO) AS TOTAL_JAN,
	   SUM(FEVEIRO) AS TOTAL_FEV,
	   SUM(MARÇO) AS TOTAL_MAR
FROM VENDEDORES;

+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_FEV | TOTAL_MAR |
+-----------+-----------+-----------+
| 995439.21 | 795141.96 | 685831.17 |
+-----------+-----------+-----------+

/* ------------------------------------------------------------------- */

/* VENDAS POR SEXO */

SELECT SEXO, SUM(MARÇO) AS TOTAL_MARÇO
FROM VENDEDORES
GROUP BY SEXO;

+------+--------------+
| SEXO | TOTAL_MARÇO  |
+------+--------------+
| F    |     87855.60 |
| M    |    597975.57 |
+------+--------------+

/* ------------------------------------------------------------------- */