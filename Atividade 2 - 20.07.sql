create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
id bigint auto_increment,
nomeProduto varchar(255),
modelo varchar(255),
quantidadeDisponivel int,
preco decimal,
primary key(id)
);

insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Casaco", "Moletom", 46, 79.90);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Blusa", "Regata", 110, 25.50);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Calça", "Flare", 55, 49.90);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Vestido", "Longo", 23, 34.99);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Sapato", "Coturno", 12, 179.90);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Salto", "Plataforma", 31, 88.50);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Camisa", "Social", 70, 50.50);
insert into tb_produto(nomeProduto, modelo, quantidadeDisponivel, preco) value ("Lençol", "Elástico", 84, 19.90);

update tb_produto set preco = 79.90 where id = 1;

select * from tb_produto;

delete from tb_produto where id = 3;

alter table tb_produto modify preco decimal(8,2);

select * from tb_produto where preco > 500;

select * from tb_produto where preco < 500;