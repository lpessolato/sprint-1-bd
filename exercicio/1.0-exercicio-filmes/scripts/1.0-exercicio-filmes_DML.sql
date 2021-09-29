USE CATALOGO;
GO

INSERT INTO GENERO (nomeGenero)
VALUES ('AÇÃO'), ('ROMANCE');
GO

SELECT * FROM FILMES

DELETE FROM GENERO
WHERE idGenero = 2

INSERT INTO FILMES (tituloFilme,idGenero)
VALUES ('Vingadores',1), ('Gosth',3),
('Diario de uma paixão',3);
GO

INSERT INTO FILMES (tituloFilme,idGenero)
VALUES ('Rambo',1);
GO

DELETE FROM FILMES
WHERE idFilme in(8,9)

SELECT * FROM FILMES

UPDATE FILMES SET tituloFilme = 'Rambo 2'
WHERE idFilme =7

