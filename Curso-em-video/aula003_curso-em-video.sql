-- DDL
create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil', 
primary key (id)
) default charset = utf8;

-- DML
-- aqui vamos começar a inserir os dados na tabela 
insert into pessoas values
( default, 'Adalgiza', '1930-11-2', 'F', '53.2', '1.65', default); -- o padrão das datas é ano-mês-dia

-- inserir vários dados na tabela de uma única vez
insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade) -- campos adicionados por opção
values 
(default, 'Luiza', '2004-06-20', 'F', '70.0', '1.76', 'Argentina'),
(default, 'Vinícius', '2002-08-26', 'M', '90.0', '1.70', default),
(default, 'Mike', '1958-03-02', 'M', '90',  '1.80', 'EUA');

-- visualizar os dados na tabela
select * from pessoas;




