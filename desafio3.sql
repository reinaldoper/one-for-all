SELECT user.name_usuario AS 'usuario', COUNT(history.musicas_id) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(musicy.duracao / 60), 2) AS 'total_minutos'
FROM SpotifyClone.Usuarios AS user
INNER JOIN SpotifyClone.Historico AS history
ON user.usuario_id = history.usuario_id
INNER JOIN SpotifyClone.Musicas AS musicy
ON history.musicas_id = musicy.musicas_id
GROUP BY user.name_usuario ORDER BY user.name_usuario;