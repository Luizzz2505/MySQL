create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30),
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
)default charset = utf8;

insert into pessoas values 
(default, 'Luiz Francisco', '2004-05-25', 'M', '80.0', '1.70', default),
(default, 'Luiza', '2004-06-20', 'F', '70.0', '1.76', 'Argentina'),
(default, 'Vinícius', '2002-08-26', 'M', '90.0', '1.70', default),
(default, 'Mike', '1958-03-02', 'M', '90',  '1.80', 'EUA');

-- aqui vamos alterar a tabela pessoas criando mais um campo para ela
alter table pessoas
add column profissao varchar(10);

-- descreve somente os campos da tabela
desc pessoas;

-- visualiza a tabela como um todo 
select * from  pessoas;

-- aqui vou exluir a coluna profissao para poder alterar a posição dela
alter table pessoas
drop column profissao;

-- aqui vou adicionar novamente a coluna profissao logo depois da coluna nome
alter table pessoas
add column profissao varchar(10) after nome;

-- agora vou adicinar um campo no topo da tabela
alter table pessoas
add codigo int first; -- o column é opcional.

-- aqui vou modificar a estrutura da definição da coluna profissao. Também servindo para modificar as constrants 
alter table pessoas
modify column profissao varchar(20);

-- alterando o nome da coluna profissao
alter table pessoas
change column profissao prof varchar(20);

-- aqui vou alterar o nome da tabela de pessoas para gafanhotos 
alter table pessoas
rename to gafanhotos;

desc gafanhotos;

-- mais uma tabela
create table if not exists cursos (
nome varchar(30) not null unique, -- não deixa usar os mesmos nomes. é um pouco diferente da pk 
descricao text, -- text usado para textos longos, diferente do char ou varchar
carga int unsigned, -- usado para não permitir um campo ser negativo
totalaulas int,
ano year default '2016'
) default charset utf8;

-- colocando o id como primeira coluna na tabela cursos
alter table cursos
add column idcursos int first;

-- não é possível adicionar uma coluna já com a tabela criada e dar primary key a ela, por isso, precisamos usar outro comando
alter table cursos
add primary key (idcursos);

desc cursos;

-- vou criar uma tabela para poder apagá-la
create table if not exists test (
id int,
nome varchar(30),
idade int
);

insert into test values 
('1', 'Guanabara', '40'),
('2', 'Maricota', '77');

select * from test;

-- apagar essa tabela test 
drop table if exists test;


