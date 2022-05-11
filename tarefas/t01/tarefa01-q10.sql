/* Questão 10 */

SELECT p.nome,
(SELECT nome FROM departamento WHERE codigo = p.cod_depto),
(SELECT nome FROM funcionario WHERE codigo = p.cod_responsavel)
FROM projeto p;
