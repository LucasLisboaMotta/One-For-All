SELECT
artistas.artista AS artista,
albuns.album AS album,
COUNT(seguidores.artista_id) AS seguidores
FROM SpotifyClone.albuns as albuns
INNER JOIN SpotifyClone.artistas AS artistas
ON artistas.artista_id = albuns.artista_id
INNER JOIN SpotifyClone.seguidores AS seguidores
ON seguidores.artista_id = albuns.artista_id
GROUP BY albuns.album, artistas.artista_id
ORDER BY seguidores DESC, artista, album
;