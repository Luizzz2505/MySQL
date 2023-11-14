use cadastro;

-- aqui os cursos vão ser mostrados de acordo com a chave primária (idcursos)
select * from cursos;

-- aqui com o order by, os campos vão ser mostrados de acordo com o nome (em ordem)
select * from cursos
order by nome; -- pode também colocar asc

-- podemos alterar essa ordem para que seja decrescente 
select * from cursos
order by nome desc;

-- aqui vou selecionar colunas específicas
select ano, carga, nome from cursos
order by nome; -- aqui é para dizer qual campo vai definir a ordem

-- agora vamos selecionar apenas algumas linhas específicas
select nome, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano != 2015
order by ano, nome;

-- selecionando intervalos 
-- aqui são faixas de valores
select nome, ano from cursos
where ano between 2014 and 2016 -- inclui esses dois
order by ano desc, nome asc;

-- aqui são valores específicos
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

-- combinando testes
select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;






























