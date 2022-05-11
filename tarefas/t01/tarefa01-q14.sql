/* Questão 14 */

CREATE VIEW atividade_func AS
SELECT nome, (SELECT COUNT(*) FROM atividade WHERE funcionario.codigo = atividade.cod_responsavel)
FROM funcionario WHERE codigo in (SELECT cod_responsavel FROM atividade);

SELECT * FROM atividade_func;
