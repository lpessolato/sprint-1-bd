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

insert into Clinica (nome_clinica, endereco_clinica, CNPJ, razao_social)
values ('Clinica Possarle','AV.Barão.Limeira, 532 , São Paulo, SP','86.400.902/0001-30', 'SP Medical Group');
go

insert into Departamento (nome_departamento)
values ('Acupuntura'), ('Anestesiologia'), ('Angiologia'), ('Cardiologia'),
('Cirurgia Cardiovascular'), ('Cirurgia da Mão'), ('Cirurgia do Aparelho Digestivo'),
('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), ('Cirurgia Torácica'),
('Cirurgia Vascular'), ('Dermatologica'), ('Radiologia'), ('Urologia'), ('Pediatra'),
('Psiquiatria');
go

insert into Medico (idUsuario, idClinica, idDepartamento, nome_medico, CRM)
values (1,1,2, 'Ricardo Lemos', '54356-SP'),
(2,1,17, 'Roberto Possarle', '53452-SP'), 
(3,1,16, 'Helena Strada', '65463-SP');
go

insert into Status (status)
values ('Agendada'), ('Realizada'), ('Cancelada');
go

insert into Paciente (idUsuario, nome_paciente, data_nasc, telefone,RG, CPF, endereco)
values (4, 'Ligia', '1983-10-13', '1134567654', '435225435', '94839859000',
'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
(5, 'Alexandre', '2001-07-23', '11987656543', '326543457', '73556944057',
'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
(6, 'Fernando', '1973-10-10', '11972084453', '546365253', '16839338002',
'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
(7, 'Henrique', '1985-10-13', '1134566543', '543663625', '14332654765',
'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
(8, 'João', '1975-08-27', '1176566377', '532544441', '91305348010',
'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
(9, 'Bruno', '1972-03-21', '11954368769', '545662667', '79799299004', 
'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
(10, 'Mariana', '2018-03-05', null, '545662668', '13771913039',
'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');
go

insert into Atendimento (idPaciente, idMedico, idStatus, data_consulta)
values (7,3,2, '2020-01-20 15:00:00'),
(2,2,3, '2020-01-06 10:00:00'),
(3,2,2, '2020-02-07 11:00:00'),
(2,2,2, '2018-02-06 10:00:00'),
(4,1,3, '2019-02-07 11:00:00'),
(7,3,1, '2020-03-08 15:00:00'),
(4,1,1, '2020-03-09 11:00:00');
go
