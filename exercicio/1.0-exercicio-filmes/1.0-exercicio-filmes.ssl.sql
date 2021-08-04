--criando o banco de dados com nome de catalogo
create database catalogo;
go

use catalogo;
go

create table genero (
idgenero tinyint primary key identity(1,1),
nomegenero varchar(20)
);
go

--alter table genero
--drop column nomegenero

alter table genero
add nomegenero varchar(20) not null

create table filme (
idfilme smallint primary key identity(1,1),
idgenero tinyint foreign key references genero(idgenero),
idtitulofilme varchar(50) not null 
);
go