SELECT
COUNT(historico.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios as usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON usuarios.usuario_id = historico.usuario_id
WHERE usuarios.usuario = 'Bill'
;