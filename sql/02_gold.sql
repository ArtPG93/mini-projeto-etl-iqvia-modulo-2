CREATE OR REPLACE TABLE `mini-projeto-etl-modulo-2.gold.dim_produto` AS

SELECT
  GENERATE_UUID() AS sk_produto,
  id_produto_original,
  valor_produto,
  data_referencia AS data_inicio_validade,
  CAST(NULL AS DATE) AS data_fim_validade,
  TRUE AS flag_ativo

FROM `mini-projeto-etl-modulo-2.silver.iqvia_clean`