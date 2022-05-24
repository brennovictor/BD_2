/* 09. Cadastre um cartão de milhagem para um cliente qualquer e logo após crie um
gatilho que cadastre um cartão de milhagem para aquele cliente quando suas
informações forem atualizadas. Veja e explique o que acontece quando esse
procedimento for realizado. */

INSERT INTO cliente VALUES (1, 'cliente1', 'bairro1');
INSERT INTO milhas VALUES (1, 0);

CREATE FUNCTION cadastrar_cartao_milhas()
RETURNS trigger AS $$
BEGIN
    INSERT INTO milhas (cliente, quantidade)
    VALUES (NEW.codigo, 0);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER castrar_cartao
AFTER UPDATE ON cliente
    FOR EACH ROW 
    EXECUTE FUNCTION cadastrar_cartao_milhas();
    

UPDATE cliente SET NOME = 'teste' WHERE codigo = 1;


/* Ocorre um erro:

ERROR:  duplicate key value violates unique constraint "milhas_pkey"
DETAIL:  Key (cliente)=(1) already exists.
CONTEXT:  SQL statement "INSERT INTO milhas (cliente, quantidade)
    VALUES (NEW.codigo, 0)"
PL/pgSQL function cadastrar_cartao_milhas() line 3 at SQL statement

Pois, ao criar um cartão milhas para o cliente, e logo após criar um gatilho para que seja criado um novo cartão
para o mesmo cliente, com a condição dos dados do cliente serem atualizados: a execução vai tentar criar uma nova linha
da relação milhas com valores duplicados, o qual, não é possível. */
