/* 06. Crie um gatilho que some milhas ao cartão de milhagem sempre que um cliente é
adicionado a um voo. (considere que é adicionado 1 milha no cartão para cada 10
milhas de distância percorrida em um voo). */

CREATE FUNCTION soma_milhas_cliente()
RETURNS trigger AS $$
BEGIN
    UPDATE milhas 
    SET quantidade = quantidade + (SELECT distancia FROM voo WHERE codigo = (SELECT voo FROM cliente_voo))/10
    /* SET quantidade = quantidade + (SELECT distancia FROM voo, cliente_voo WHERE NEW.voo = voo.codigo)/10 */
    WHERE cliente = NEW.cliente;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER soma_milhas
AFTER INSERT ON cliente_voo
    FOR EACH ROW 
    EXECUTE FUNCTION soma_milhas_cliente();
   
   
