create database db_pizzaria_legal
default character set utf8
default collate utf8_general_ci;

use db_pizzaria_legal;

create table tb_categorias(
id_categoria int not null auto_increment,
salgada boolean,
doce boolean,
primary key (id_categoria)
)default charset = utf8;

create table if not exists tb_pizzas(
id_pizza int not null auto_increment,
pequena boolean,
media boolean,
grande boolean,
categoria int,
primary key (id_pizza),
foreign key (categoria) references tb_categorias(id_categoria)
)default charset = utf8;

select * from tb_categorias;
select * from tb_pizzas;

insert into tb_categorias values (default, true, false);
insert into tb_categorias values (default, false, true);

insert into tb_pizzas values (default, true, false, false, '1');
insert into tb_pizzas values (default, false, true, false, '1');
insert into tb_pizzas values (default, false, false, true, '1');
insert into tb_pizzas values (default, true, false, false, '2');
insert into tb_pizzas values (default, false, true, false, '2');
insert into tb_pizzas values (default, false, false, true, '2');

update tb_pizzas
set valor = '25.00'
where id_pizza = '1';

update tb_pizzas
set valor = '30.00'
where id_pizza = '2';

update tb_pizzas
set valor = '35.00'
where id_pizza = '3';

update tb_pizzas
set valor = '30.00'
where id_pizza = '4';

update tb_pizzas
set valor = '35.00'
where id_pizza = '5';

update tb_pizzas
set valor = '40.00'
where id_pizza = '6';

select * from tb_pizzas where valor > 30.00;

select * from tb_pizzas where valor between 30.00 and 40.00;

select * from tb_pizzas
inner join tb_categorias
on tb_categorias.id_categoria = tb_pizzas.categoria; 

SELECT * FROM tb_pizzas
where pequena LIKE true;

SELECT * FROM tb_pizzas
where media LIKE true;

SELECT * FROM tb_pizzas
where grande LIKE true;

select * from tb_pizzas
inner join tb_categorias
on tb_categorias.id_categoria = tb_pizzas.categoria
where categoria = '2';








