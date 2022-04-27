create database db_construindo_vidas
default character set utf8
default collate utf8_general_ci;

use db_construindo_vidas;

create table tb_categorias(
id_categoria int not null auto_increment,
departamento varchar (100),
disponibilidade boolean,
primary key (id_categoria)
)default charset = utf8;
 
create table tb_produtos(
id_produto int not null auto_increment,
valor decimal (6,2),
nome varchar (100),
descricao varchar (100),
fabricante varchar (100),
id_categoria_produto int not null,
primary key (id_produto),
foreign key (id_categoria_produto) references tb_categorias(id_categoria)
)default charset = utf8;

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias values (default, 'hidraulica',true);
insert into tb_categorias values (default, 'ferragem',true);
insert into tb_categorias values (default, 'revestimento',true);
insert into tb_categorias values (default, 'eletrica',true);
insert into tb_categorias values (default, 'decoracao',true);

insert into tb_produtos values (default, '500.00','bacia sanitaria','branca','deca','1');
insert into tb_produtos values (default, '600.00','estrutura','ferro','ferracetim','2');
insert into tb_produtos values (default, '800.00','porcelanato','preto','votoratim','3');
insert into tb_produtos values (default, '200.00','disjuntor','220V','eletrotek','4');
insert into tb_produtos values (default, '400.00','pia','bege','deca','1');
insert into tb_produtos values (default, '300.00','luminaria','led','lightlind','5');
insert into tb_produtos values (default, '100.00','massa corrida','branca','iquine','3');
insert into tb_produtos values (default, '50.00','tomadas','branca','tramontina','4');

select * from tb_prdutos where valor > '100.00';

select * from tb_produtos where valor between 70.00 and 150.00;
 
select * from tb_produtos where nome LIKE '%c%';
 
select * from tb_produtos
inner join tb_categorias
on tb_categorias.id_categoria = tb_produtos.id_categoria_produto;

select id = '1' from tb_produtos
inner join tb_categorias
on tb_categorias.id_categoria = tb_produtos.id_categoria_produto;







 

