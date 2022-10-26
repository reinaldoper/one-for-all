SELECT t.name_artista AS artista, a.name_album AS album
FROM SpotifyClone.Artista AS t
INNER JOIN SpotifyClone.Album AS a
ON t.artista_id = a.artista_id
WHERE t.name_artista = 'Elis Regina';