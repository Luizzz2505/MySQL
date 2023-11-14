use cadastro;

-- seleção por nome
select * from cursos
where nome like 'p%'; -- like é case sensive. O % significa nenhum ou vários caracteres

-- wildcards
select * from cursos
where nome like '%a'; -- o "a" fica no final nesse caso

-- aqui o no meio do % faz com que mostre todos os dados que possuam o A em qualquer posição
select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

update cursos 
set nome = 'PáOO' 
where idcurso = '9';

select * from cursos
where nome like 'ph%p%';

-- wildcard com número
select * from cursos
where nome like 'ph%p_'; -- esse _ significa que a query quer que tenha número no final da solicitação

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%_silva%';

-- distinguindo 
-- mostra somente um único dado, ao invés de repetí-lo várias vezes
select distinct nacionalidade from gafanhotos
order by nacionalidade;

-- teste
select * from gafanhotos
where nacionalidade = 'Japão';

select distinct carga from cursos
order by carga;

-- agregação. aqui eu usei esse comando para me dizer a quantidade de cursos que se tem registro
select count(*) from cursos;

-- aqui estou contando quantos cursos tem carga maior que 40 (reforçando a explicação acima)
select count(*) from cursos
where carga > 40;

select count(nome) from cursos;

select * from cursos
order by carga;

-- máximo dentro de um campo
select max(carga) from cursos;

-- aqui vou comandar para mostrar qual o curso teve mais aula em 2016
select max(totaulas) from cursos where ano = 2016;

-- menor mostrando qual o nome também
select nome, min(totaulas) from cursos where ano = 2016;

-- somando 
select sum(totaulas) from cursos where ano = 2016;

-- média
select avg(totaulas) from cursos where ano = 2016;












