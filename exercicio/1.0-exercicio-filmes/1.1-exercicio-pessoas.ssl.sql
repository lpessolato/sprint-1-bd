--create database empresa;
--go

--use empresa;
--go

create table pessoa (
idpessoa smallint primary key identity (1,1),
nomepessoa varchar(20) not null
);
go

create table telefone (
idtelefone smallint primary key identity (1,1),
idpessoa smallint foreign key references pessoa(idpessoa),
numerotelefone varchar(15) not null 
);
go

create table email (
idemail int primary key identity (1,1),
idpessoa smallint foreign key references pessoa(idpessoa),
end_email varchar(256) not null 
);
go

create table cnh (
idcnh smallint primary key identity (1,1),
idpessoa smallint foreign key references pessoa(idpessoa),
descricao char(11) not null unique 
);
go
