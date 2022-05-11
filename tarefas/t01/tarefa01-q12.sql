/* Questão 12 */

SELECT 
p.nome AS nome_projeto, 
p.data_inicio AS data_inicio_proj, 
p.data_fim AS data_fim_proj, 
a.descricao AS descricao_ativ, 
a.data_inicio AS data_inicio_ativ, 
a.data_fim AS data_fim_ativ 
FROM projeto p
JOIN atividade_projeto ap 
ON ap.cod_projeto = p.codigo
JOIN atividade a ON ap.cod_atividade = a.codigo;
