create database db_farmacia_bem_estar
default character set utf8
default collate utf8_general_ci;

use db_farmacia_bem_estar;

create table tb_categorias(
id_categoria int not null auto_increment,
remedio varchar (255),
higiene_pessoal varchar (255),
primary key (id_categoria)
)default charset = utf8;

create table tb_produtos(
id_produto int not null auto_increment,
nome varchar(255),
valor_produto decimal (5,2),
fabricante_produto varchar (255),
prescricao boolean,
desconto_clube_farma decimal (5,2),
id_categoria_produto int not null,
primary key (id_produto),
foreign key (id_categoria_produto) references tb_categorias(id_categoria)
)default charset = utf8;

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias values (default, 'dor e febre',null);
insert into tb_categorias values (default, 'antibiotico',null);
insert into tb_categorias values (default, 'antialergico',null);
insert into tb_categorias values (default, null,'limpeza no banho');
insert into tb_categorias values (default, null,'limpeza bucal');

insert into tb_produtos values (default, 'Paracetamol','23.00','Tylenol',false,null,'1');
insert into tb_produtos values (default, 'Xampu','17.00','Dove',false,'0.15','4');
insert into tb_produtos values (default, 'Enxaguante bucal','14.00','Listerine',false,'0.15','4');
insert into tb_produtos values (default, 'Dexclorfeniramina','20.00','Polaramine',false,'0.05','3');
insert into tb_produtos values (default, 'Azitromicin','48.00','Panvel',true,null,'2');
insert into tb_produtos values (default, 'Cefalexina','150.00','Cefex',true,'0.10','2');
insert into tb_produtos values (default, 'Dipirona','2.00','EMS',false,'0.05','1');
insert into tb_produtos values (default, 'Creme dental','20.00','Sensodyne',false,null,'4');

select * from tb_categorias;
select * from tb_produtos;

select * from tb_produtos where valor_produto > 50.00;

select * from tb_produtos where valor_produto between 5.00 and 60.00;

select * from tb_produtos where nome LIKE '%c%';

select * from tb_produtos
inner join tb_categorias
on tb_categorias.id_categoria = tb_produtos.id_categoria_produto;






 

