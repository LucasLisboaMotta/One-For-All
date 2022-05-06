SELECT
MIN(planos.preco) AS faturamento_minimo,
MAX(planos.preco) AS faturamento_maximo,
ROUND(AVG(planos.preco), 2) AS faturamento_medio,
ROUND(SUM(planos.preco), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN  SpotifyClone.planos as planos 
ON usuarios.plano_id = planos.plano_id
;