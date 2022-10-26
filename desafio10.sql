SELECT musicy.name_musica AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.Historico AS recover
INNER JOIN SpotifyClone.Musicas AS musicy
ON musicy.musicas_id = recover.musicas_id
INNER JOIN SpotifyClone.Usuarios AS user
ON user.usuario_id = recover.usuario_id
WHERE user.id_plano IN (1, 4)
GROUP BY nome
ORDER BY nome;