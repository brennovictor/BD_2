INSERT INTO funcionario VALUES 
	(1, 'fulano1',  'm', '2000-01-01', 2000, 1),
	(2, 'fulano2', 'f', '2000-01-02', 3000, 2),
	(3, 'fulano3',  'm', '2000-01-03', 4000, 5),
	(4, 'fulano4',  'f', '2000-01-04', 5000, 1),
	(5, 'fulano5', 'm', '2000-01-05', 6000, 4);


INSERT INTO departamento VALUES
	(1, 'Dep 1', 1),
	(2, 'Dep 2', 2),
	(3, 'Dep 3', 2),
	(4, 'Dep 4', 3),
	(5, 'Dep 5', 5);

INSERT INTO projeto VALUES
	(1, 'Projeto 1', 'projeto 1 etc', 3, 1, '2000-01-01', '2000-02-01'),
	(2, 'Projeto 2', 'projeto 2 etc', 5, 1, '2000-02-01', '2000-03-01'),
	(3, 'Projeto 3', 'projeto 3 etc', 5, 1, '2000-03-01', '2000-04-01'),
	(4, 'Projeto 4', 'projeto 4 etc', 5, 1, '2000-04-01', '2000-05-01'),
	(5, 'Projeto 5', 'projeto 5 etc', 5, 1, '2000-05-01', '2000-06-01');

INSERT INTO atividade VALUES
	(1, 'alguma coisa', 'outra coisa', 1, '2000-01-01', '2000-02-01'),
	(2, 'alguma coisa', 'outra coisa', 2, '2000-02-01', '2000-03-01'),
	(3, 'alguma coisa', 'outra coisa', 3, '2000-03-01', '2000-04-01'),
	(4, 'alguma coisa', 'outra coisa', 2, '2000-04-01', '2000-05-01'),
	(5, 'alguma coisa', 'outra coisa', 2, '2000-05-01', '2000-06-01');

INSERT INTO atividade_projeto VALUES
	(1, 4),
	(2, 3),
	(2, 5),
	(5, 2),
	(4, 3);

