create database db_servicoRH;

use db_servicoRH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
setor varchar(255),
quantidadeContratacoes int,
salario decimal,
primary key(id)
);

insert into tb_funcionarios(nome, setor, quantidadeContratacoes, salario) value ("Ana", "Recrutamento", 10, 1.800);
insert into tb_funcionarios(nome, setor, quantidadeContratacoes, salario) value ("José", "Seleção", 6, 1.550);
insert into tb_funcionarios(nome, setor, quantidadeContratacoes, salario) value ("Maria", "Departamento Pessoal", 0, 2.200);
insert into tb_funcionarios(nome, setor, quantidadeContratacoes, salario) value ("João", "Remuneração", 0, 1.1650);
insert into tb_funcionarios(nome, setor, quantidadeContratacoes, salario) value ("Fátima", "Treinamento", 4, 2.460);

update tb_funcionarios set salario = 1.800 where id = 2;

delete from tb_funcionarios where id = 1;
delete from tb_funcionarios where id = 3;
delete from tb_funcionarios where id = 5;
delete from tb_funcionarios where id = 7;
delete from tb_funcionarios where id = 9;

select * from tb_funcionarios;

alter table tb_funcionarios modify salario decimal(8,3);

select * from tb_funcionarios where salario > 2.000;

select * from tb_funcionarios where salario < 2.000;