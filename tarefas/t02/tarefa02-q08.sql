/* 08. Crie um gatilho que delete todos os clientes de um voo sempre que aquele voo for
deletado e mais um gatilho para deletar o piloto. (Para efeito de informação, considere
que o avião caiu). */

CREATE FUNCTION del_cliente_voo()
RETURNS trigger AS $$
BEGIN
    DELETE FROM cliente_voo
    WHERE voo = NEW.codigo;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER del_cliente
AFTER DELETE ON voo
    FOR EACH ROW 
    EXECUTE FUNCTION del_cliente_voo();
    
    
    
    
CREATE FUNCTION del_piloto_voo()
RETURNS trigger AS $$
BEGIN
    DELETE FROM piloto
    WHERE NEW.cod_piloto = codigo;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER del_piloto
AFTER DELETE ON voo
    FOR EACH ROW 
    EXECUTE FUNCTION del_piloto_voo();
