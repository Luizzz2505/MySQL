-- Comentários em códigos 
-- 1. Criar frases que explica o funcionamento de um determinado código
-- 2. Comentar apenas uma parte de um código e executar o restante
-- 3. Comentar todo um trecho de um código de maneira rápida e otimizada

-- Este código seleciona as colunas de ID do produto e nome do produto da tabela de produto.
SELECT 
	ProductKey,
	ProductName
FROM
	DimProduct

SELECT 
	--StoreKey,
	StoreName,
	StorePhone
FROM
	DimStore

/*SELECT 
	StoreKey,
	StoreName,
	StorePhone
FROM
	DimStore*/

SELECT * FROM DimProduct


