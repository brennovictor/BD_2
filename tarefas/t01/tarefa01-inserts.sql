INSERT INTO funcionario VALUES 
	(DEFAULT, 'fulano1',  'm', '2000-01-01', 2000, 2),
	(DEFAULT, 'fulano2', 'f', '2000-01-02', 3000, 3),
	(DEFAULT, 'fulano3',  'm', '2000-01-03', 4000, 4),
	(DEFAULT, 'fulano4',  'f', '2000-01-04', 5000, 4),
	(DEFAULT, 'fulano5', 'm', '2000-01-05', 6000, 5);


INSERT INTO departamento VALUES
	(DEFAULT, 'Dep 1', 1),
	(DEFAULT, 'Dep 2', 2),
	(DEFAULT, 'Dep 3', 2),
	(DEFAULT, 'Dep 4', 3),
	(DEFAULT, 'Dep 5', 5);

INSERT INTO projeto VALUES
	(DEFAULT, 'Projeto 1', 'projeto 1 etc', 3, 1, '2000-01-01', '2000-02-01'),
	(DEFAULT, 'Projeto 2', 'projeto 2 etc', 5, 1, '2000-02-01', '2000-03-01'),
	(DEFAULT, 'Projeto 3', 'projeto 3 etc', 5, 1, '2000-03-01', '2000-04-01'),
	(DEFAULT, 'Projeto 4', 'projeto 4 etc', 5, 1, '2000-04-01', '2000-05-01'),
	(DEFAULT, 'Projeto 5', 'projeto 5 etc', 5, 1, '2000-05-01', '2000-06-01');

INSERT INTO atividade VALUES
	(DEFAULT, 'alguma coisa', 'outra coisa', 1, '2000-01-01', '2000-02-01'),
	(DEFAULT, 'alguma coisa', 'outra coisa', 2, '2000-02-01', '2000-03-01'),
	(DEFAULT, 'alguma coisa', 'outra coisa', 3, '2000-03-01', '2000-04-01'),
	(DEFAULT, 'alguma coisa', 'outra coisa', 2, '2000-04-01', '2000-05-01'),
	(DEFAULT, 'alguma coisa', 'outra coisa', 2, '2000-05-01', '2000-06-01');

INSERT INTO atividade_projeto VALUES
	(1, 4),
	(2, 3),
	(2, 5),
	(5, 2),
	(4, 3);
