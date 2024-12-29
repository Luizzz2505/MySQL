-- Comando SELECT... FROM: Retorna todas as linhas da tabela, independente das colunas selecionadas

SELECT 
	Firstname,
	EmailAddress
FROM
	DimEmployee

-- Comandos SELECT TOP(N) e TOP(N) PERCENT: retorna as N primeiras linhas

-- 1. Crie um c�digo que retorna as 10 primeiras linhas da tabela de produtos.

SELECT TOP(10) * FROM DimProduct

-- 2. Retorne as 10% primeiras linhas da tabela de Clientes.

SELECT top(10) PERCENT * FROM DimCustomer

-- A tabela factSales � muito grande e demandaria muito tempo e consumo da m�quina para rodar o comando, 
-- ent�o o comando TOP(N) PERCENT se encaixa perfeitamente aqui.

SELECT TOP(1000) * FROM factSales