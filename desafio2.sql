SELECT (SELECT COUNT(*) FROM SpotifyClone.Musicas) AS 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.Artista) AS 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.Album) AS 'albuns';