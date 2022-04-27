create database db_curso_da_minha_vida
default character set utf8
default collate utf8_general_ci;

use db_curso_da_minha_vida;

create table tb_categorias(
id_categoria int not null auto_increment,
nivel_curso varchar (20),
certificacao boolean,
primary key (id_categoria)
)default charset = utf8;

create table tb_cursos(
id_curso int not null auto_increment,
nome_curso varchar (100),
carga_horaria bigint,
valor_curso decimal (6,2),
avaliacao int,
area varchar (20),
id_categoria_curso int not null,
primary key (id_curso),
foreign key (id_categoria_curso) references tb_categorias(id_categoria)
)default charset = utf8;

select * from tb_categorias;
select * from tb_cursos;

insert into tb_categorias values (default, 'iniciante',true);
insert into tb_categorias values (default, 'intermediario',true);
insert into tb_categorias values (default, 'avancado',true);
insert into tb_categorias values (default, 'iniciante',false);
insert into tb_categorias values (default, 'intermediario',false);
insert into tb_categorias values (default, 'avancado',false);

insert into tb_cursos values (default, 'Banco de dados relacional MySQL', '120','200.50', '5', 'TI', '1');
insert into tb_cursos values (default, 'Informatica basica','20', '20.00', '4', 'TI', '2');
insert into tb_cursos values (default, 'Eletrica de automoveis', '4', '40.00', '3', 'Profissionalizante','3');
insert into tb_cursos values (default, 'Controlando as financas pessoais', '1','500.00', '5', 'Gestao e negocios', '2');
insert into tb_cursos values (default, 'Illustrator CS6', '5','40', '600.00', 'Ilustracao digital', '5');
insert into tb_cursos values (default, 'Design de sobrancelhas', '4','900.00', '3', 'Estetica', '6');

select * from tb_cursos where valor_curso > '500.00';

 select * from tb_cursos where valor_curso between 600.00 and 1000.00;
 
 select * from tb_cursos where nome_curso LIKE '%j%';
 
select * from tb_cursos
inner join tb_categorias
on tb_categorias.id_categoria = tb_cursos.id_categoria_curso;

select nome_curso from tb_cursos
inner join tb_categorias
on tb_categorias.id_categoria = tb_cursos.id_categoria_curso;











