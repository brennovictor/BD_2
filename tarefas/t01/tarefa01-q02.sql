/* Questão 2 */

SELECT * 
FROM funcionario 
WHERE dataNasc != 
(SELECT MIN(dataNasc) FROM funcionario);
