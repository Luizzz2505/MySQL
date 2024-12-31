/*Exercício 05. O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto
registrado na base de produtos que ainda não tenha sido vendido. Tente chegar nessa
informação.
Obs: caso tenha algum produto que ainda não tenha sido vendido, você não precisa descobrir
qual é, é suficiente saber se teve ou não algum produto que ainda não foi vendido.*/

SELECT 
	*
FROM
	DimProduct

SELECT 
	TOP(1000) *
FROM
	FactSales

-- Quais produtos foram vendidos através da coluna ProductKey
SELECT 
	DISTINCT ProductKey
FROM
	FactSales