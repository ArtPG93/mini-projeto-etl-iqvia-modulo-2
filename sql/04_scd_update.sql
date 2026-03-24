UPDATE `mini-projeto-etl-modulo-2.gold.dim_produto` t
SET 
  data_fim_validade = CURRENT_DATE(),
  flag_ativo = FALSE
WHERE EXISTS (
  SELECT 1
  FROM `mini-projeto-etl-modulo-2.silver.iqvia_clean` s
  WHERE t.id_produto_original = s.id_produto_original
    AND t.flag_ativo = TRUE
    AND t.valor_produto != s.valor_produto
);