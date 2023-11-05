-- criando a base de dados (onde todos as tabelas ficam inseridas)
create database cadastro;

-- informar que vamos usar a base de dados cadastro
use cadastro;

-- criando a tabela (onde ficam os dados com características semelhantes)
create table pessoas (
nome varchar(30), -- varchar é um espaço variante
idade tinyint(3), -- quando se usa tinyint, não precisa especificar os bytes
sexo char(1), -- char é um espaço fixo 
peso float, 
altura float,
nacionalidade varchar(20)
);

-- estrutura interna
describe pessoas;