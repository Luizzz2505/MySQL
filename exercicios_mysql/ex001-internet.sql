create database vendas
default character set utf8
default collate utf8_general_ci;

use vendas;

-- algumas definições não estam precisam porque estou seguindo o modelo da atividade para poder aplicar os comandos do exercício
-- estou aplicando o padrão latino-americano para praticar a sintaxe, apenas

create table produto(
codigo_produto integer,
descricao_produto varchar(30),
preco_produto float
) default charset = utf8;

create table nota_fiscal (
numero_nf integer,
data_nf date,
valor_nf float
) default charset = utf8;

create table itens (
produto_codigo_produto integer,
nota_fiscal_numero_nf integer,
qtde_item integer
) default charset = utf8;

desc produto;
desc nota_fiscal;
desc itens;

-- alterar o campo descricao_produto da tabela produto para o tipo varchar(50)
alter table produto
modify descricao_produto varchar(50);

-- alterar a tabela nota_fiscal, adicionando o campo ICMS, do tipo float depois do campo numero_nf
alter table nota_fiscal
add column icms float after numero_nf;

-- alterar a tabela produto, adicionando o campo peso, do tipo float
alter table produto
add column peso float;

-- fazer com que a chave primária da tabela itens deixe de ser composta por codigo do produto mais numero da nota fiscal e passe a ser num_item
alter table itens
add column num_item int;

alter table itens
add primary key (num_item);

-- apresentar a estrutura da tabela produto
show columns from produto;
desc produto;

-- apresentar a estrutura da tabela nota_fiscal
show columns from nota_fiscal;
desc nota_fiscal;

-- alterar o nome do campo valor_nf da tabela nota_fiscal para valorTotal_nf
alter table nota_fiscal
change valor_nf valorTotal float;

-- remover o campo data_nf da tabela nota_fiscal
alter table nota_fiscal
drop column data_nf;

-- remover a tabela itens do modelo de dados
drop table itens;

-- alterar o nome da tabela nota_fiscal para venda
alter table nota_fiscal
rename venda;





