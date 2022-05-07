SELECT
cancoes.cancao AS nome,
COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.planos AS planos
INNER JOIN SpotifyClone.usuarios AS usuarios
ON usuarios.plano_id = planos.plano_id
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON usuarios.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes AS cancoes
ON cancoes.cancao_id = historico.cancao_id
where planos.plano = 'gratuito'
OR planos.plano = 'pessoal'
GROUP BY cancoes.cancao
;