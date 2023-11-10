create database vendas
default character set utf8
default collate utf8_general_ci;

use vendas;

create table clientes (
id_cliente int not null auto_increment,
nome_cliente varchar(45) not null,
dt_nasc date,
primary key (id_cliente)
)default charset = utf8;

create table produtos (
id_produto int not null auto_increment,
nome_produto varchar(45) not null,
preco double(5,2) unsigned,
primary key (id_produto)
)default charset = utf8;

create table pedidos (
id_pedido int not null auto_increment,
id_cliente int,
id_produto int ,
dt_pedido date,
quantidade int,
primary key (id_pedido),
foreign key (id_cliente) references clientes (id_cliente),
foreign key (id_produto) references produtos (id_produto)
)default charset = utf8;

insert into clientes values
(default, 'Luiz', '2004-05-25'),
(default, 'Flávio', '1965-06-12'),
(default, 'Paula', '2004-09-26'),
(default, 'Guanabara', '1974-04-08');

insert into produtos values
(default, 'PS5', '5.000'),
(default, 'Notebook ACER', '3.500'),
(default, 'Smartphone Motorola ONE FUSION+', '2.500'),
(default, 'Tablet Samsung A8 lite', '1.500');
desc produtos;
insert into pedidos values 
(default, default, default, '2023-11-01', '1'),
(default, default, default, '2023-10-06', '2'),
(default, default, default, '2023-02-09', '1'),
(default, default, default, '2023-11-10', '2');

-- 1
select * 
from clientes
where year(now()) - year(dt_nasc) > 30;

-- 2
SELECT *
FROM produtos
where preco > 1;

-- 3
SELECT *
FROM pedidos
INNER JOIN produtos ON pedidos.id_produto = produtos.id_produto
WHERE (produtos.preco * pedidos.quantidade) > 2;

-- 4
SELECT clientes.nome_cliente
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
ORDER BY pedidos.dt_pedido DESC
LIMIT 1;

-- 5
SELECT nome_cliente
FROM clientes
WHERE NOT EXISTS (
    SELECT 1
    FROM pedidos
    WHERE pedidos.id_cliente = clientes.id_cliente
);














