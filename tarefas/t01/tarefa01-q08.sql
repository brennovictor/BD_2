/* Questão 8 */

SELECT d.descricao, 
(SELECT nome FROM funcionario WHERE codigo = d.cod_gerente), 
(SELECT COUNT(*) FROM projeto WHERE cod_depto = d.codigo)
FROM departamento d;
