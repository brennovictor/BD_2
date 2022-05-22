/*05. Crie um gatilho que ao se adicionar um voo, seja adicionado +1 voo para o piloto
daquele voo. */

CREATE FUNCTION add_voo_piloto()
RETURNS trigger AS $$
BEGIN
    UPDATE piloto 
    SET num_voos = num_voos + 1
    WHERE codigo = NEW.cod_piloto;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER add_voo
AFTER INSERT ON voo
    FOR EACH ROW 
    EXECUTE FUNCTION add_voo_piloto();
