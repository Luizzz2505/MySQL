-- Coment�rios em c�digos 
-- 1. Criar frases que explica o funcionamento de um determinado c�digo
-- 2. Comentar apenas uma parte de um c�digo e executar o restante
-- 3. Comentar todo um trecho de um c�digo de maneira r�pida e otimizada

-- Este c�digo seleciona as colunas de ID do produto e nome do produto da tabela de produto.
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


