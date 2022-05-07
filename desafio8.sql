SELECT
artistas.artista AS artista,
albuns.album AS album
FROM SpotifyClone.albuns as albuns
INNER JOIN SpotifyClone.artistas AS artistas
ON artistas.artista_id = albuns.artista_id
HAVING artistas.artista = 'Walter Phoenix'
ORDER BY album
;