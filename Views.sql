#criar view
create view VW_lista_de_funcionario AS 
SELECT NOME, ESPECIALIDADE
FROM funcionarios;

#Utilizando a view criada
select * from VW_lista_de_funcionario;

#criando uma view para vizualizar os dependentes
create view VW_lista_de_dependentes
select NOME
FROM dependentes;

#Utilizando a view criada
select * from VW_lista_de_dependentes;

create view  VW_funcionario_com_dependentes AS
select funcionarios.NOME, dependentes.nome_func
from funcionario
inner join dependentes
on funcionarios.COD = dependentes.cod_func;

select * from VW_fncionario_com_dependentes;

create view  VW_funcionario_com_dependentes AS
select funcionarios.NOME, dependentes.nome_func
from funcionario
left join dependentes
on funcionarios.COD = dependentes.cod_func;

create view  VW_funcionario_com_dependentes AS
select funcionarios.NOME, dependentes.nome_func
from funcionario
right join dependentes
on funcionarios.COD = dependentes.cod_func;