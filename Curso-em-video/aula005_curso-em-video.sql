create database cadastro 
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'), 
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasil',
primary key (id)
)default charset utf8;

insert into pessoas values
(default, 'Luiz Francisco', '2004-05-25', 'M', '80.0', '1.70', default),
(default, 'Rosângela Maria', '1975-12-04', 'F', '69.5', '1.63', default),
(default, 'Maddie Rooney', '2001-09-6', 'F', '67.5', '1.69', 'EUA');

alter table pessoas
add column profissao varchar(30);

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
rename to gafanhotos;

create table curso (
nome varchar(30) not null unique, 
descricao text,
carga int unsigned,
totalaulas int, 
ano year default '2016'
)default charset utf8;

alter table curso
add column idcurso int first;

alter table curso
add primary key (idcurso);

-- aqui eu inseri alguns dados errados na tabela cursos para poder alterá-los
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2000'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso Completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a Fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

-- não se pode manipular várias linhas ao mesmo tempo. um comando manipula uma linha.
-- os contrário das linhas, é possível alterar várias colunas ao mesmo tempo

-- aqui vou usar os comando para modificar as linhas
update cursos -- modifique
set nome = 'HTML5' -- configurando
where idcurso ='1'; -- onde

-- aqui vou modificar uma linha que possui dois dados errados
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

-- aqui eu vou alterar mais uma linha com três dados errados e limitando quantas linhas vão ser afetadas caso for feito algum comando errado
update cursos
set nome = 'Java', ano = '2015', carga = '40' -- não é preciso colocar na mesma ordem
where idcurso = '5'
limit 1;

-- aqui vou alterar as 3 últimas linhas da tabela, o que não é recomendado, tanto que o próprio workbench deixa configurado para não ser feito
-- essa configuração pode ser alterada (não é recomendado)
update cursos
set ano = '2050', carga = '800'
where ano = '2018';

-- vou alterar novamente esses dados acima para poder testar o comando limit
-- a alteração só ocorre na primeira linha
update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

-- agora vou apagar as linhas que eu não quero mais
delete from cursos
where idcurso = '8';

-- agora vou brincar com o comando delete para apagar várias linhas de uma vez
-- apagar vários registros também se faz necessário desmarcar a opção save update
-- usar o limit deixa mais seguro esse processo
delete from cursos
where ano = '2050'
limit 2;

-- agora vou apagar todos os registros de uma tabela
truncate table cursos; -- table é opcional 

select * from cursos;  

