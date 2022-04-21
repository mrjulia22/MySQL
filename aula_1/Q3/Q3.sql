create database db_rg_escola;
use db_rg_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar (255) not null,
    cruso varchar (255) not null,
    idade int not null,
    turma int not null,
    nota float (2,2) not null,
    Primary key (id)
);

insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Maju", "Engenharia da computação", 25, 51 ,9.50);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Ivana", "Física", 30, 34 ,3.50);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Cláudio", "Ciências Biológicas", 27, 12 ,10.00);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Juliette", "Matemática", 21, 45 ,9.50);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Luciana", "História da arte", 20, 32 ,4.50);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Melissa", "Filosofia", 30, 61 ,8.00);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Carol", "Arquitetura", 32, 31 ,5.55);
insert into tb_esudantes (nome, curso, idade, turma, nota)
values ("Lisandra", "Letras", 40, 22 ,6.55);

select * from tb_estudantes where nota > 7.00;
select * from tb_estudantes where nota < 7.00;


