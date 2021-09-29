use EMPRESA;
go

insert into PESSOA (nomePessoa)
values ('SAULO'), ('LUCAS');
GO

insert into TELEFONE (idPessoa,numeroTelefone)
values (1,'11920040199'), (2,'11939130323');
go


select * from CNH

insert into EMAIL (idPessoa,end_email)
values (1,'saulo@gmail.com'), (2,'lucas@gmail.com');
go

insert into CNH (idPessoa,descricao)
values (1,'123'), (2,'678');
go

select * from PESSOA
select * from TELEFONE
select * from EMAIL
select * from CNH
