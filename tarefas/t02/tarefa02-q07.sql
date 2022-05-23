/* 07. Crie um gatilho que adicione mais um passageiro a um voo sempre que um cliente
entre em um voo. (Dica: lembre da relação cliente_voo). */

CREATE FUNCTION add_num_passageiros()
RETURNS trigger AS $$
BEGIN
    UPDATE voo
    SET num_passageiros = num_passageiros + 1
    WHERE codigo = NEW.voo;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql; 


CREATE TRIGGER add_passageiros
AFTER INSERT ON cliente_voo
    FOR EACH ROW 
    EXECUTE FUNCTION add_num_passageiros();
