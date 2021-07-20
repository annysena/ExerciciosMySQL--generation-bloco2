create database db_registroEscola;

use db_registroEscola;

create table tb_estudantes(
id bigint auto_increment,
nomeEstudante varchar(255),
idade int,
serie varchar(255),
nota decimal,
primary key(id)
);

insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Beatriz", 11, "6º ano", 5.5); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Luís", 11, "6º ano", 8.2); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Lucas", 12, "7º ano", 4.8); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Gabriela", 12, "7º ano", 9.9); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Márcio", 13, "8º ano", 7.5); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Larissa", 13, "8º ano", 6.7); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("Marcela", 14, "9º ano", 8.9); 
insert into tb_estudantes(nomeEstudante, idade, serie, nota) value ("João", 14, "9º ano", 6.9); 

update tb_estudantes set nota = 5.5 where id = 1;

select * from tb_estudantes;

delete from tb_estudantes where id = 3;
delete from tb_estudantes where id = 5;
delete from tb_estudantes where id = 9;

alter table tb_estudantes modify nota decimal(8,1);

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;