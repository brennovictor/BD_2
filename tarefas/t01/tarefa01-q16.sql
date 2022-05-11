/* Questão 16 */
 
SELECT f.nome FROM funcionario f 
WHERE (
f.codigo IN (SELECT cod_responsavel FROM projeto) AND
f.codigo IN (SELECT cod_gerente FROM departamento)) 
OR (
f.salario > (SELECT salario 
FROM funcionario 
where codigo = (
SELECT cod_gerente 
FROM departamento 
WHERE f.cod_depto = codigo
)));
