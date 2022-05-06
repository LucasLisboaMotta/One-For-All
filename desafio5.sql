SELECT DISTINCT cancoes.cancao as cancao, count(historico.cancao_id) as reproducoes
FROM SpotifyClone.historico_de_reproducoes as historico
INNER JOIN SpotifyClone.cancoes AS cancoes
ON cancoes.cancao_id = historico.cancao_id 
group by historico.cancao_id
ORDER BY reproducoes DESC,cancao
LIMIT 2
;