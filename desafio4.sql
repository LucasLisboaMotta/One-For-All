SELECT usuarios.usuario AS usuario, 
IF(MAX(YEAR(historico.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios as usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON usuarios.usuario_id = historico.usuario_id
group by usuarios.usuario
;