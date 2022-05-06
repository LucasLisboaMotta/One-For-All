SELECT usuarios.usuario AS usuario,
COUNT(historico.cancao_id) AS qtde_musicas_ouvidas,
ROUND(SUM(cancoes.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON usuarios.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes AS cancoes
ON cancoes.cancao_id = historico.cancao_id
group by usuario
;