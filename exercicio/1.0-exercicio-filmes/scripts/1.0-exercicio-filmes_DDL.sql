CREATE DATABASE CATALOGO;
GO

USE CATALOGO;
GO

CREATE TABLE GENERO (
idGenero TINYINT PRIMARY KEY IDENTITY(1,1),
nomeGenero VARCHAR(20) not null

);
GO
--ALTER TABLE GENERO
--DROP COLUMN nomeGenero

--ALTER TABLE GENERO
--ADD nomeGenero VARCHAR(20) NOT NULL



CREATE TABLE FILMES (
idFilme SMALLINT PRIMARY KEY IDENTITY(1,1),
idGenero TINYINT FOREIGN KEY REFERENCES GENERO(idGenero),
tituloFilme VARCHAR(50) NOT NULL
);
GO

Create table USUARIOS(

	idUsuario int primary key identity,
	email varchar (100) not null unique,
	senha varchar (30) not null 
	permissao varchar (30) not null
);
go

--alter table USUARIOS 
--add permissao varchar (30) not null


insert into USUARIOS (email, senha, permissao)
values ('lucas@email.com', '123', 'comum'),	
		('adm@email.com', '123', 'administrador');

go 

select * from USUARIOS
