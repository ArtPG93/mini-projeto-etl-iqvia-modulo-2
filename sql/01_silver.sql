CREATE OR REPLACE TABLE `mini-projeto-etl-modulo-2.silver.iqvia_clean` AS

SELECT
  SAFE_CAST(`Cod Prod Catarinense` AS STRING) AS id_produto_original,
  
  SAFE_CAST(`Tipo Informacao SO Bandeira PRECO POPULAR Unidade` AS FLOAT64) AS valor_produto,
  
  CURRENT_DATE() AS data_referencia

FROM `mini-projeto-etl-modulo-2.bronze.iqvia_raw`

WHERE `Tipo Informacao SO Bandeira PRECO POPULAR Unidade` IS NOT NULL   