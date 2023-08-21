ALTER TABLE BACKUP.BKP_PRODUTO
ADD EVENTO CHAR (1);

SELECT * FROM BACKUP.BKP_PRODUTO;

+-------+-----------+------------------+--------+--------+
| IDBKP | ODPRODUTO | NOME             | VALOR  | EVENTO |
+-------+-----------+------------------+--------+--------+
|     1 |      1000 | TESTE            |   0.00 | NULL   |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 | NULL   |
|     3 |         0 | LIVRO BI         |  80.00 | NULL   |
|     4 |         0 | LIVRO ORACLE     |  70.00 | NULL   |
|     5 |         0 | LIVRO SQL SERVER | 100.00 | NULL   |
|     6 |         2 | LIVRO BI         |  80.00 | NULL   |
+-------+-----------+------------------+--------+--------+

/* -------------------------------------------------------------------------------- */

DELETE FROM PRODUTO 
WHERE IDPRODUTO = 4;