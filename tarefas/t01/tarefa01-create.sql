CREATE TABLE funcionario (
  codigo SERIAL,
  nome VARCHAR(15) DEFAULT NULL,
  sexo CHAR(1) DEFAULT NULL,
  dataNasc DATE DEFAULT NULL,
  salario DECIMAL(10,2) DEFAULT NULL,
  cod_depto INTEGER DEFAULT NULL,
  PRIMARY KEY (codigo)
);


CREATE TABLE departamento (
  codigo SERIAL,
  descricao VARCHAR(20),
  cod_gerente INTEGER DEFAULT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo)
);


CREATE TABLE projeto (
  codigo SERIAL,
  nome VARCHAR(45) DEFAULT NULL,
  descricao VARCHAR(45) DEFAULT NULL,
  cod_depto INTEGER DEFAULT NULL,
  cod_responsavel INTEGER DEFAULT NULL,
  data_inicio DATE DEFAULT NULL,
  data_fim DATE DEFAULT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
);


CREATE TABLE atividade (
  codigo SERIAL,
  nome VARCHAR(45) DEFAULT NULL,
  descricao VARCHAR(45) DEFAULT NULL,
  cod_responsavel INTEGER DEFAULT NULL,
  data_inicio DATE DEFAULT NULL,
  data_fim DATE DEFAULT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade_projeto (
   cod_atividade INT,
   cod_projeto INT,
   FOREIGN KEY(cod_atividade) REFERENCES atividade(codigo),
   FOREIGN KEY(cod_projeto) REFERENCES projeto(codigo)
);
