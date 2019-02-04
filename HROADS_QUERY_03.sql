USE SENAI_HROADS_MANHA;

SELECT * FROM PERSONAGENS ORDER BY ID ASC;

SELECT * FROM CLASSES ORDER BY ID ASC;

SELECT NOME FROM CLASSES ORDER BY ID ASC;

SELECT * FROM HABILIDADES ORDER BY ID ASC;

SELECT COUNT(ID) AS QUANT_HAB FROM HABILIDADES;

SELECT ID FROM HABILIDADES ORDER BY ID ASC;

SELECT * FROM TIPOS_HABILIDADES;

SELECT * FROM
	HABILIDADES H INNER JOIN TIPOS_HABILIDADES TH
ON
	H.ID_TIPO_HAB = TH.ID;

SELECT * FROM
	PERSONAGENS P INNER JOIN CLASSES CS
ON
	P.ID_CLASSE = CS.ID;

SELECT * FROM
	PERSONAGENS P FULL OUTER JOIN CLASSES CS
ON
	P.ID_CLASSE = CS.ID;

SELECT * FROM
	CLASSES CS FULL OUTER JOIN CLASSES_HABILIDADES CH
ON
	CS.ID = CH.ID_CLASSE
				FULL OUTER JOIN HABILIDADES H
				ON H.ID = CH.ID_HABILIDADE;

SELECT * FROM
	HABILIDADES H INNER JOIN CLASSES_HABILIDADES CH
ON
	H.ID = CH.ID_HABILIDADE
				INNER JOIN CLASSES CS
				ON CS.ID = CH.ID_CLASSE;

SELECT * FROM
	HABILIDADES H FULL OUTER JOIN CLASSES_HABILIDADES CH
ON
	H.ID = CH.ID_HABILIDADE
				FULL OUTER JOIN CLASSES CS
				ON CS.ID = CH.ID_CLASSE;