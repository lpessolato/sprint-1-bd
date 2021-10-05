use Sp_medical_group;
go

insert into Tipo (descricao)
values ('Administrador'), ('Medico'), ('Usuario');
go

insert into Usuario (idTipo, nome, email, senha)
values (2, 'Ricardo Lemos', 'ricardo.lemos@spmedicalgroup.com.br', '1234'),
(2, 'Roberto Possarle', 'roberto.possarle@spmedicalgroup.com.br', '1234'),
(2, 'Helena Strada' , 'helena.souza@spmedicalgroup.com.br', '1234'),
(3, 'Ligia', 'ligia@gmail.com', '1234'),
(3, 'Alexandre', 'alexandre@gmail.com', '1234'),
(3, 'Fernando', 'fernando@gmail.com', '1234'),
(3, 'Henrique', 'henrique@gmail.com', '1234'),
(3, 'João', 'joao@hotmail.com', '1234'),
(3, 'Bruno', 'bruno@gmail.com', '1234'),
(3, 'Mariana', 'mariana@outlook.com', '1234');
go

insert into Clinica (nome_clinica, endereco_clinica, CNPJ)
values ('Clinica Possarle', ('AV.Barão.Limeira, 532 , São Paulo, SP'), ('86.400.902/0001-30');
go

insert into Departamento (nome_departamento)
values ('Acupuntura'), ('Anestesiologia'), ('Angiologia'), ('Cardiologia'),
('Cirurgia Cardiovascular'), ('Cirurgia da Mão'), ('Cirurgia do Aparelho Digestivo'),
('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), (Cirurgia Torácica'),
('Cirurgia Vascular'), ('Dermatologica'), ('Radiologia'), ('Urologia'), ('Pediatra'),
('Psiquiatria');
go

insert into Medico (idUsuario, idClinica, idDepartamento, nome_medico, CRM)
values (2,1,2, 'Ricardo Lemos', '54356-SP'),
