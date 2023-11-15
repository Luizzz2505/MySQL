use cadastro;

-- com o distinct vai ser mostrado apenas um dado de cada, sem repetição
select distinct carga from cursos
order by carga;

-- agrupando os dados e mostrando quantos existem
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

-- comparando
select * from cursos
where totaulas = 30;

select * from cursos
where totaulas > 20;

-- teste
select totaulas, count(*)  from cursos
where totaulas > 30;

select carga, count(*) from cursos 
where totaulas = 30
group by carga;

select * from cursos
where totaulas = 30;

select carga, count(nome) from cursos
group by carga;

select * from cursos 
group by ano;

select ano, count(*) from cursos
group by ano
order by count(*) desc;

-- o having é muito semelhante ao where. having só funciona se a seleção for a mesma do group by
select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;
-- media
select avg(carga) from cursos;

-- select dentro de outro
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);






