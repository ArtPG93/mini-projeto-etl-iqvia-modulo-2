UPDATE `mini-projeto-etl-modulo-2.silver.iqvia_clean`
SET valor_produto = valor_produto * 1.1
WHERE id_produto_original IN (
  SELECT id_produto_original
  FROM `mini-projeto-etl-modulo-2.silver.iqvia_clean`
  LIMIT 3
)