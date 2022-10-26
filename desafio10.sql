SELECT musicy.name_musica AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.Historico AS r
INNER JOIN SpotifyClone.Musicas AS musicy
ON musicy.musicas_id = r.musicas_id
INNER JOIN SpotifyClone.Usuarios AS user
ON user.usuario_id = r.usuario_id
WHERE user.id_plano IN (1, 3)
GROUP BY nome
ORDER BY nome;