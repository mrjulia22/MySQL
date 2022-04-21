create database db_e_commerce;
use db_e_commerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar (255) not null,
    fabricante varchar (255) not null,
    valor double (10,2) not null,
    modelo varchar (255) not null,
    quantidade bigint not null,
    primary key (id)
);

insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("TV CristalHD", "Samsung", 5500.90, "70 polegadas",32);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("PlayStatioin", "Sony", 4500.90, "5",50);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("Macbook", "Apple", 12000.00, "Pro M1",120);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("Monitor 4K", "LG", 1500.80, "27 polegadas", 30);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("Tablet", "Samsung", 4790.90, "A7",60);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("Teclado", "Logitech", 700.00, "MX", 20);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("Ar Condicionado", "LG", 5300.90, "Dual Inverter", 10);
insert into tb_produtos (nome, fabricante, valor, modelo, quantidade)
values ("Cadeira Ergonomica", "ThunderX3", 1790.90, "Yama1", 30);

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;