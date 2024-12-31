-- Aqui eu verifico se tem a quantidade de produtos indicada
SELECT 
	*
FROM
	DimProduct

-- Aqui eu verifico se ainda possuem a quantidade de clientes foi alterada
SELECT 
	 *
FROM
	DimCustomer

-- Aqui verifica a data de nascimento dos clientes e seus respectivos contatos 
SELECT
	CustomerKey,
	FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer

-- Renomeando as colunas dessa tabela 
SELECT 
	CustomerKey AS 'Chave Primária',
	FirstName AS 'Primeiro Nome',
	EmailAddress AS Email,
	BirthDate AS 'Data aniversário'
FROM
	DimCustomer

-- Aqui eu seleciono os 100 primeiros clientes da Contoso
SELECT TOP(100)
	 * 
FROM
	DimCustomer

-- Selecionando os primeiros 20% de clientes da histoória
SELECT 
	  TOP(20) PERCENT *
FROM
	DimCustomer

-- os 10% agora
SELECT
	TOP(10) PERCENT *
FROM
	DimCustomer

-- Os 100 primeiros clientes, mas das colunas FirstName, EmailAddress, BirthDate
SELECT
	TOP(100) FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer

-- Renomear as colunas anteriores para nomes em pt-br
SELECT 
	FirstName AS 'Primeiro nome',
	EmailAddress AS 'email',
	BirthDate AS 'Data Aniversário'
FROM
	DimCustomer