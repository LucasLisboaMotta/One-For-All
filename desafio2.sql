SELECT COUNT(DISTINCT cancoes.cancao) AS cancoes,
COUNT(DISTINCT artistas.artista) AS artistas,
COUNT(DISTINCT albuns.album) AS albuns
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns;