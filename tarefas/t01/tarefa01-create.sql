CREATE TABLE funcionario (
  codigo INTEGER NOT NULL,
  nome varchar(15) NOT NULL,
  sexo char(1) DEFAULT NULL,
  dataNasc date DEFAULT NULL,
  salario decimal(10,2) DEFAULT NULL,
  cod_depto INTEGER DEFAULT NULL,
  PRIMARY KEY (codigo)
);
