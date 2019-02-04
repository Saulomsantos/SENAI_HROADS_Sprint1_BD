USE SENAI_HROADS_MANHA;

INSERT INTO CLASSES (NOME)
VALUES	('B�rbaro'),
		('Cruzado'),
		('Ca�adora de Dem�nios'),
		('Monge'),
		('Necromante'),
		('Feiticeiro'),
		('Arcanista');

INSERT INTO TIPOS_HABILIDADES (NOME)
VALUES	('Ataque'),
		('Defesa'),
		('Cura'),
		('Magia');

INSERT INTO HABILIDADES (NOME, ID_TIPO_HAB)
VALUES	('Lan�a Mortal',	1),
		('Escudo Supremo',	2),
		('Recuperar Vida',	3);

INSERT INTO CLASSES_HABILIDADES (ID_CLASSE, ID_HABILIDADE)
VALUES	(1,1),
		(1,2),
		(2,2),
		(3,1),
		(4,2),
		(4,3),
		(6,3);

INSERT INTO PERSONAGENS (NOME, ID_CLASSE, CAP_MAX_VIDA, CAP_MAX_MANA, DATA_ATUAL, DATA_CRIACAO)
VALUES	('DeuBug',1,100,80,'2019-02-04','2019-01-18'),
		('BitBug',4,70,100,'2019-02-04','2016-03-17'),
		('Fer8',7,75,60,'2019-02-04','2018-03-18');

UPDATE PERSONAGENS SET DATA_ATUAL = GETDATE();

SELECT * FROM PERSONAGENS ORDER BY ID ASC;

UPDATE PERSONAGENS SET NOME = 'Fer7' WHERE ID = 4;

UPDATE CLASSES SET NOME = 'Necromancer' WHERE ID = 5;

SELECT * FROM CLASSES ORDER BY ID ASC;

