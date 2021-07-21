create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null, 
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("sessão cosméticos", true);
insert into tb_categoria (descricao, ativo) values ("sessão remédios", true);
insert into tb_categoria (descricao, ativo) values ("sessão higiene", true);
insert into tb_categoria (descricao, ativo) values ("sessão perfumes", true);
insert into tb_categoria (descricao, ativo) values ("sessão fraldas", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
quantidade int not null,
valor decimal (6,2) not null,
codigo_de_barra int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Esmalte", 23, 2.99, 12345678, 1);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Removedor de Maquiagem", 14, 9.99, 17643678, 1);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Anticoncepcional", 43, 23.50, 12340195, 2);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Analgésico", 57, 1.99, 84675678, 2);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Papel Higiênico", 19, 13.90, 10836578, 3);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Absorvente", 27, 5.65, 10947628, 3);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Desodorante", 22, 10.49, 35867178, 4);
insert into tb_produto (nome, quantidade, valor, codigo_de_barra, categoria_id) values ("Fralda P", 7, 38.50, 95748263, 5);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "%B%";

select tb_produto.nome, tb_produto.quantidade, tb_produto.valor, tb_produto.codigo_de_barra, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;
