use EMPRESA;
go

--Listar as pessoas em odem alfabetica reversa, mostrando
--seus telefoes, seus email e suas CNHs.

select nomePessoa, end_email, numeroTelefone, descricao, idCNH from PESSOA
inner join EMAIL
on PESSOA.idPessoa = EMAIL.idPessoa
inner join TELEFONE
on PESSOA.idPessoa = TELEFONE.idTelefone
inner join CNH
on PESSOA.idPessoa = CNH.idpessoa;
go
