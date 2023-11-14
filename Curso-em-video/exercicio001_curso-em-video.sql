-- EXERCÍCIOS 

-- para facilitar minha visualização caso assim seja necessário 
use cadastro;
select * from gafanhotos;
select * from cursos;

-- Uma lista com o nome de todas as "gafanhotas"
select * from gafanhotos
where sexo = 'F';

-- Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
-- aqui eu adicionei os nomes para poder visualizar melhor os dados
select nome, nascimento from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'; -- para rodar normalmente, se faz necessário o uso das aspas simples

-- Uma lista com o nome de todos os homens que trabalham como programadores
select nome from gafanhotos
where profissao = 'programador';

-- Uma lista com todos os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando coma letra J
select * from gafanhotos
where nome like 'J%' and nacionalidade = 'Brasil' and sexo = 'F';

-- Uma lista com o nome e a nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso < 100;

-- Qual é a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

-- Qual é a média de peso dos gafanhotos cadastrados
select avg(peso) from gafanhotos;

-- Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/dez/2000?
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- Quantas gafanhotas mulheres têm mais de 1.90m de altura?
select count(altura) from gafanhotos
where sexo = 'F' and altura > 1.90;
