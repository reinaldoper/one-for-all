SELECT musicy.name_musica AS 'cancao', COUNT(history.musicas_id) AS 'reproducoes'
FROM SpotifyClone.Historico AS history
INNER JOIN SpotifyClone.Musicas AS musicy
ON history.musicas_id = musicy.musicas_id
GROUP BY musicy.name_musica ORDER BY reproducoes DESC, musicy.name_musica ASC LIMIT 2;