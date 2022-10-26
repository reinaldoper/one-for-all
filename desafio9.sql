SELECT COUNT(*) AS quantidade_musicas_no_historico from SpotifyClone.Historico AS history
INNER JOIN SpotifyClone.Usuarios AS user
ON user.usuario_id = history.usuario_id
WHERE user.name_usuario = 'Barbara Liskov';