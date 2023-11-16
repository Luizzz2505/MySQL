use cadastro;

desc gafanhotos;
desc cursos;

-- adicionando uma nova coluna na tabela para criar o relacionando 
alter table gafanhotos
add column cursopreferido int; -- column opcional

-- adicionando chave estrangeira
alter table gafanhotos
add foreign key (cursopreferido) -- cursopreferido está ligado com idcursos da tabela cursos
references cursos (idcurso);

select * from gafanhotos;
select * from cursos;

-- aqui vou adicionar o curso preferido de alguns
update gafanhotos 
set cursopreferido = '6'
where id = '1';

-- integridade referencial (teste)
delete from cursos
where idcurso = '6';

delete from cursos
where idcurso = '28';

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

-- join é junção
-- junção (teste)
select gafanhotos.nome, gafanhotos.cursopreferido , cursos.nome, cursos.ano		
from gafanhotos join cursos;

-- sempre que eu usar join existe uma clásula para dar sentido ao join e não dar erro como no meu teste acima
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos inner join cursos -- juntando com
on cursos.idcurso = gafanhotos.cursopreferido  -- fiz a ligação da chave primária com a chave estrangeira em gafanhotos. ON para dar sentido ao JOIN
order by gafanhotos.nome; -- aqui não foi solicitado pelo professor, mas coloquei para que eu pudesse ver a query de forma mais organizada (melhor para mim)

-- também posso trabalhar com apelidos de colunas. fazendo-se necessário usar o AS ou não (opcional)
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos as g inner join cursos as c -- com isso posso me referir a gafanhotos como g e curso como c diminuindo meu comando 
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

-- resultado com apelidos
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c -- como é aqui que eu defino os apelidos, é o único lugar que não posso abreviá-los
on c.idcurso = g.cursopreferido
order by g.nome;

-- com o outer join eu referencio até mesmo as partes que não estão relacionadas
-- aqui mostra o nome dos gafanhotos e não o nome dos cursos
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c  -- com o left eu defino o gafanhotos como preferencial já que ele está a esquerda. nesse caso o OUTER é opcional
on c.idcurso = g.cursopreferido
order by g.nome;

-- aqui vou fazer o lado direito como preferencial 
-- aqui vai mostrar o nome dos cursos e não o nome dos gafanhotos
select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c 
on c.idcurso = g.cursopreferido;