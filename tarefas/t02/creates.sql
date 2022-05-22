CREATE TABLE cliente ( 
	codigo SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL, 
	endereco VARCHAR(100) NOT NULL,
	PRIMARY KEY (codigo) 
);

CREATE TABLE piloto ( 
	codigo SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL, 
	num_voos INTEGER NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE voo ( 
	codigo SERIAL NOT NULL,
        tipo VARCHAR(10) NOT NULL,
	cod_piloto INTEGER NOT NULL,
	distancia DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas (
        cliente INTEGER NOT NULL,
        quantidade INTEGER NOT NULL,
        PRIMARY KEY(cliente),
        FOREIGN KEY(cliente) REFERENCES cliente(codigo)

);

CREATE TABLE cliente_voo (
        cliente INTEGER NOT NULL,
        voo INTEGER NOT NULL,
        classe VARCHAR(5) NOT NULL,
        PRIMARY KEY(cliente, voo),
        FOREIGN KEY(cliente) REFERENCES cliente(codigo),
        FOREIGN KEY(voo) REFERENCES voo(codigo)
);
