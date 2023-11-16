use cadastro;

-- distinguindo
-- o distinct considera apenas uma ocorrência de cada valor nos registros (considerando apenas o primeiro)
select distinct carga from cursos
order by carga;

-- agrupando
select carga from cursos
group by carga;

-- agrupando e agregando. aqui vou usar o count, porque quando os registros estão agrupados ele vai me permitir vizualizar quantos de cada existe
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select carga, count(*) from cursos
where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
order by count(*) desc;


-- o having para o group by é semelhante ao where para o select
-- o having só trabalha com o campo que você agrupou (group by)
select ano, count(*) from cursos
group by ano 
having count(ano) >= 5
order by count(*) desc;

-- exemplo do having
-- esta query não funciona justamente porque o group by está usando o ano e não o totaulas
select ano, count(*) from cursos
group by ano
having totaualas > 30
order by count(*) desc;

select ano, count(*) from cursos
group by ano
having ano > 2013
order by count(*) desc;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

select avg(carga) from cursos;

-- select dentro de outro 
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);





