create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Biologia Molecular", true);
insert into tb_categoria (descricao, ativo) values ("Citologia", true);
insert into tb_categoria (descricao, ativo) values ("Estética", true);
insert into tb_categoria (descricao, ativo) values ("Java", true);
insert into tb_categoria (descricao, ativo) values ("Git e GitHub", true);

select * from tb_categoria;

delete from tb_categoria where id = 2;

delete from tb_categoria where id = 3;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
quantidade int not null, 
valor decimal (6,2) not null,
tipo_de_edicao varchar (255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso DNA e RNA", 6, 50.00, "Limitada", 1);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso RNA mensageiro na transcrição", 3, 55.00, "Limitada", 1);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso Citologia Oncótica", 8, 40.00, "Ilimitada", 4);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso Células Embrionárias", 5, 95.00, "Limitada", 4);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso Peeling", 15, 85.00, "Ilimitada", 5);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso Radiofrequência", 68, 165.00, "Iimitada", 5);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso Java orientação a objetos", 12, 128.00, "Limitada", 6);
insert into tb_produto (nome, quantidade, valor, tipo_de_edicao, categoria_id) values ("Curso Repositórios", 34, 57.00, "Iimitada", 7);

select * from tb_produto;

delete from tb_produto where id = 1;

delete from tb_produto where id = 9;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "%J%";

select tb_produto.nome, tb_produto.quantidade, tb_produto.valor, tb_produto.tipo_de_edicao, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 6;

