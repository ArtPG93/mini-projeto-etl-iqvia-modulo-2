INSERT INTO `mini-projeto-etl-modulo-2.gold.dim_produto`

SELECT
  GENERATE_UUID(),
  s.id_produto_original,
  s.valor_produto,
  CURRENT_DATE(),
  CAST(NULL AS DATE),
  TRUE
FROM `mini-projeto-etl-modulo-2.silver.iqvia_clean` s
JOIN `mini-projeto-etl-modulo-2.gold.dim_produto` t
  ON s.id_produto_original = t.id_produto_original
WHERE t.flag_ativo = FALSE
  AND t.data_fim_validade = CURRENT_DATE()

  SELECT *
FROM `mini-projeto-etl-modulo-2.gold.dim_produto`
ORDER BY id_produto_original, data_inicio_validade