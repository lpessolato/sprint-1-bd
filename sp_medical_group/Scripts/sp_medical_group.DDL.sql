create database Sp_medical_group;
go

use Sp_medical_group;
go

Create table Tipo (
idTipo tinyint primary key identity (1,1),
descricao varchar (30) not null,
);
go

Create table Usuario (
idUsuario int primary key identity (1,1),
idtipo tinyint foreign key references Tipo(idTipo),
nome varchar (30) not null,
email varchar (50) not null,
senha varchar (20) not null,
);
go

Create table Clinica (
idClinica tinyint primary key identity (1,1),
nome_clinica varchar (20) not null,
endereco_clinica varchar (60) not null,
CNPJ char (18) not null unique,
nome_fantasia varchar (150),
horario_abertura time , 
horario_fechamento time ,
razao_social varchar (30) not null
);
go

Create table Departamento (
idDepartamento smallint primary key identity (1,1),
nome_departamento varchar (50) not null
);
go

Create table Medico (
idMedico smallint primary key identity (1,1),
idUsuario int foreign key references Usuario(idUsuario),
idClinica tinyint foreign key references Clinica(idClinica),
idDepartamento smallint foreign key references Departamento(idDepartamento),
nome_medico varchar (50) not null,
CRM char (8) not null unique
);
go

Create table Paciente (
idPaciente smallint primary key identity (1,1),
idUsuario int foreign key references Usuario(idUsuario),
nome_paciente varchar (100) not null,
data_nasc date not null,
telefone char (11) ,
RG char (10) not null unique,
CPF char (11) not null unique,
endereco varchar (100) not null
);
go

Create table Status (
idStatus tinyint primary key identity (1,1),
status varchar (30) not null
);
go

Create table Atendimento (
idAtendimento int primary key identity (1,1),
idPaciente smallint foreign key references Paciente(idPaciente),
idMedico smallint foreign key references Medico(idMedico),
idStatus tinyint foreign key references Status(idStatus),
data_consulta datetime not null, 
descricao varchar (200) 
);
go
