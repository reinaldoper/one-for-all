SELECT artista.name_artista AS artista, albun.name_album AS album, COUNT(seguir.usuario_id) AS seguidores FROM SpotifyClone.Artista AS artista
INNER JOIN SpotifyClone.Album AS albun
ON artista.artista_id = albun.artista_id
INNER JOIN SpotifyClone.Seguindo AS seguir
ON seguir.artista_id_seguindo = artista.artista_id
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;