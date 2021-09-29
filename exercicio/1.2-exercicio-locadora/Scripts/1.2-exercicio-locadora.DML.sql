use LOCADORA;
go

insert into MARCA (nome)
values ('volks'), ('ford');
go

insert into MODELO (idMarca,descricao)
values (1,'gol'), (2,'ka');
go

insert into CLIENTES (nome,cpf)
values ('Saulo','1234454645');
go

insert into VEICULOS (idModelo,placa)
values (1,'1234abc'), (2,'6789cde');
go

insert into ALUGUEIS (idClientes,idVeiculo,data_inicio,data_fim)
values (1,1, '29/09/2019', '05/10/2019'), (2,2, '29/09/2019','05/10/2019');
go

select * from MARCA
select * from MODELO
select * from CLIENTES
select * from VEICULOS
select * from ALUGUEIS
