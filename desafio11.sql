SELECT musicy.name_musica AS nome_musica,
CASE
	WHEN LOCATE('Bard', musicy.name_musica) > 0 THEN REPLACE(musicy.name_musica, 'Bard', 'QA')
    WHEN LOCATE('Amar', musicy.name_musica) > 0 THEN REPLACE(musicy.name_musica, 'Amar', 'Code Review')
    WHEN LOCATE('Pais', musicy.name_musica) > 0 THEN REPLACE(musicy.name_musica, 'Pais', 'Pull Requests')
    WHEN LOCATE('SOUL', musicy.name_musica) > 0 THEN REPLACE(musicy.name_musica, 'SOUL', 'CODE')
    WHEN LOCATE('SUPERSTAR', musicy.name_musica) > 0 THEN REPLACE(musicy.name_musica, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.Musicas AS musicy
ORDER BY novo_nome DESC LIMIT 5;