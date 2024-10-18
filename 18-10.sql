create database  Empresa_Joins;

use Empresa_Joins;

create table departamento(
id int auto_increment primary key,
Nome varchar (255)
);


create table funcionario(
id_fun int auto_increment primary key,
Nome varchar (100),
salario decimal(10,2),
id int,
foreign key (id) references departamento (id)
);

create table dependente(
id_depen int auto_increment primary key,
Nome varchar (100),
id_fun int,
foreign key (id_fun) references funcionario (id_fun)
);

select * from departamento;
insert into departamento (Nome)
values("RH"),
		("Marketing"),
        ("Adm"),
        ("Financeiro"),
        ("gestaovendas");
        

        
insert into funcionario (Nome, salario, id)
values("Fabricio", "5000.00",1),
		("Bruno", "3000.00", 2),
        ("Lucimar", "6.000", 4),
        ("Fábio", "3.000", 3),
        ("Lucas","4000.00", 5);
        

insert into dependente (Nome, id_fun)
values("Rudrian",1),
		("Marcela", 2),
        ("Artur", 3),
        ("Pietro",4),
        ("Lorenzo", 5); 
        
        insert into dependente (Nome, id_fun)
values("Amelia",3),
		("Simon", 2),
        ("Eloise", 1);
        


        
        

