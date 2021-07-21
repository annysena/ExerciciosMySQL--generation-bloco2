create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Somente delivery", true);
insert into tb_categoria (descricao, ativo) values ("Só vende pizza doce", true);
insert into tb_categoria (descricao, ativo) values ("Só vende pizza salgada", true);
insert into tb_categoria (descricao, ativo) values ("Vende pizza doce e salgada", true);
insert into tb_categoria (descricao, ativo) values ("Não faz entrega", true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
tamanho varchar (255) not null,
valor decimal (6,2) not null, 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Calabresa", "Grande", 31.90, 1);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Mussarela", "Pequena", 30.90, 2);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Portuguesa", "Média", 25.90, 3);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Brócolis", "Grande", 38.90, 4);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Atum", "Pequena", 31.50, 5);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("4 Queijos", "Média", 40.90, 2);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Frango", "Grande", 32.90, 4);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Lombo", "Pequena", 37.90, 3);

select * from tb_pizza;

select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor between 29.00 and 60.00;

select * from tb_pizza where sabor like "C%";

select * from tb_pizza where sabor like "%C%";

select tb_pizza.sabor, tb_pizza.tamanho, tb_pizza.valor, tb_categoria.descricao from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;