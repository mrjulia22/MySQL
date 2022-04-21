create database db_rh2;
use db_rh2;

create table tb_colaboradores(
	id bigint auto_increment,
    nome char (255) not null,
    idade int not null,
    salario double not null,
    funcao varchar (255) not null,
    descricao varchar (255),
    primary key (id)
);

insert into tb_colaboradores (nome, idade, salario, funcao, descricao)
values ("Maju", 25, 50000, "DevJr", "promoçao");
insert into tb_colaboradores (nome, idade, salario, funcao, descricao)
values ("Marcos", 25, 30000, "DevPl", "demissão");
insert into tb_colaboradores (nome, idade, salario, funcao)
values ("Eduarda", 23, 50000, "DevJr");
insert into tb_colaboradores (nome, idade, salario, funcao, descricao)
values ("Maria", 40, 20000, "DevPl", "relocação");
insert into tb_colaboradores (nome, idade, salario, funcao)
values ("Leticia", 35, 5000, "DevSr");

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;





