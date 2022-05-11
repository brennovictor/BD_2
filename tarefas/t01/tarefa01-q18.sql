/* Questão 18 */


SELECT f.nome, d.descricao 
FROM funcionario f LEFT JOIN departamento d ON 
f.cod_depto = d.codigo 
WHERE f.salario = (SELECT MAX(salario) FROM funcionario WHERE cod_depto = d.codigo);
