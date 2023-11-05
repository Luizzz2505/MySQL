-- criando a base de dados configurando para o padrão de acentuação latino-americano
create database cadastro 
default character set utf8 
default collate utf8_general_ci;

use cadastro;

-- aqui vou melhorar a tabela que criei na última aula
create table pessoas (
id int not null auto_increment, -- constraint usada para definir que o próprio banco de dados vai preencher esse campo
nome varchar(30) not null, -- constraint usada para deixar o campo obrigatório
nascimento date,
sexo enum ('M', 'F'), -- usado para deixar os requisitos mais rígidos. Permitindo apenas inserir valores que eu já defini
peso decimal(5,2), -- aqui eu defino que vão existir 5 casas, mas 3 vão estar antes da vírgula e 2 depois
altura decimal (3,2), 
nacionalidade varchar(20) default 'Brasil', -- constraint para deixar o padrão que eu já defini, caso o usuário deixe em branco esse campo
primary key (id)
) default charset = utf8;