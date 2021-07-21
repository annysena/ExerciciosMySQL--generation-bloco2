create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Aventura", true);
insert into tb_classe (descricao, ativo) values ("Ação", true);
insert into tb_classe (descricao, ativo) values ("Esporte", true);
insert into tb_classe (descricao, ativo) values ("Corrida", true);
insert into tb_classe (descricao, ativo) values ("Zumbis", true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nomePersonagem varchar (255) not null,
poderDefesa int not null,
poderAtaque int not null,
cor varchar (255) not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Hello", 2323, 1333,  "amarelo", 1);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Lalai", 3322, 1444, "azul", 2);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Futebola", 1000, 3000, "verde", 3);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Zaza", 9990, 2200, "vermelho", 4);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Súria", 123, 1480, "cinza", 5);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Mark", 3232, 1500,  "lilas", 3);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Luni", 332, 4000, "laranja", 2);
insert into tb_personagem (nomePersonagem, poderDefesa, poderAtaque, cor, classe_id) values ("Miroki", 336, 350, "marrom", 1);

select * from tb_personagem;

delete from tb_personagem where id = 2;
delete from tb_personagem where id = 8;

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa between 1000 and 2000;

select * from tb_personagem where nomePersonagem like "M%";

select * from tb_personagem where nomePersonagem like "%M%";

select tb_personagem.nomePersonagem, tb_personagem.poderDefesa, tb_personagem.poderAtaque, tb_personagem.cor, tb_classe.descricao from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 5;
