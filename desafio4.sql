SELECT user.name_usuario AS 'usuario', IF(MAX(YEAR(musicy.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.Usuarios AS user
INNER JOIN SpotifyClone.Historico AS musicy
ON user.usuario_id = musicy.usuario_id
GROUP BY user.name_usuario ORDER BY user.name_usuario;