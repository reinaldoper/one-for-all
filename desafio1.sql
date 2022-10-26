DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  CREATE TABLE SpotifyClone.Planos (
    id_plano INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(80),
    valor_plano DECIMAL(10,2)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Usuarios (
    usuario_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_usuario VARCHAR(50),
    idade INT,
    data_assinatura DATE NOT NULL,
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES Planos (id_plano)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Artista (
    artista_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_artista VARCHAR(50)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Album (
    album_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_album VARCHAR(50),
    artista_id INT,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artista (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Musicas (
    musicas_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_musica VARCHAR(100),
    duracao INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Historico (
    musicas_id INT,
    data_reproducao DATETIME NOT NULL,
    usuario_id INT,
    PRIMARY KEY (musicas_id, usuario_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
    FOREIGN KEY (musicas_id) REFERENCES Musicas (musicas_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.Seguindo (
    usuario_id INT NOT NULL,
    artista_id_seguindo INT NOT NULL,
    PRIMARY KEY (usuario_id, artista_id_seguindo),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
    FOREIGN KEY (artista_id_seguindo) REFERENCES Artista (artista_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.Planos (id_plano, plano, valor_plano)
 VALUES (1, 'gratuito', 0),
 (2, 'familiar', 7.99),
 (3, 'universitario', 5.99),
 (4, 'pessoal', 6.99);

  INSERT INTO SpotifyClone.Usuarios (usuario_id, name_usuario, idade, data_assinatura, id_plano)
 VALUES ( 1, 'Barbara Liskov', 82, '2019-10-20', 1),
    ( 2, 'Robert Cecil Martin', 58, '2017-01-06', 1),
    ( 3, 'Ada Lovelace', 37, '2017-12-30', 2),
    ( 4, 'Martin Fowler', 46, '2017-01-17', 2),
    ( 5, 'Sandi Metz', 58, '2018-04-29', 2),
    ( 6, 'Paulo Freire', 19, '2018-02-14', 3),
    ( 7, 'Bell Hooks', 26, '2018-01-05', 3),
    ( 8, 'Christopher Alexander', 85, '2019-06-05', 4),
    ( 9, 'Judith Butler', 45, '2020-05-13', 4),
    ( 10, 'Jorge Amado', 58, '2017-02-17', 4);

  INSERT INTO SpotifyClone.Artista (artista_id, name_artista)
    VALUES (1, 'Beyoncé'),
    (2, 'Queen'),
    (3, 'Elis Regina'),
    (4, 'Baco Exu do Blues'),
    (5, 'Blind Guardian'),
    (6, 'Nina Simone');

  INSERT INTO SpotifyClone.Album (album_id, name_album, artista_id, ano_lancamento)
 VALUES (1, 'Renaissance', 1, 2022),
 (2, 'Jazz', 2, 1978),
 (3, 'Hot Space', 2, 1982),
 (4, 'Falso Brilhante', 3, 1998),
 (5, 'Vento de Maio', 3, 2001),
 (6, 'QVVJFA?', 4, 2003),
 (7, 'Somewhere Far Beyond', 5, 2007),
 (8, 'I Put A Spell On You', 6, 2012);

  INSERT INTO SpotifyClone.Musicas (musicas_id, name_musica, duracao, album_id)
 VALUES (1, 'Samba em Paris', 267, 6),
 (2, 'VIRGO’S GROOVE', 369, 1),
 (3, 'Feeling Good', 100, 8),
 (4, 'O Medo de Amar é o Medo de Ser Livre', 207, 5),
 (5, 'Under Pressure', 152, 3),
 (6, 'BREAK MY SOUL', 279, 1),
 (7, 'Don’t Stop Me Now', 203, 2),
 (8, 'The Bard’s Song', 244, 7),
 (9, 'ALIEN SUPERSTAR', 116, 1),
 (10, 'Como Nossos Pais', 105, 4);

  INSERT INTO SpotifyClone.Historico (musicas_id, data_reproducao, usuario_id)
 VALUES (1, '2022-02-28 10:45:55', 1),
 (2, '2020-05-02 05:30:35', 1),
 (3, '2020-03-06 11:22:33', 1),
 (3, '2022-08-05 08:05:17', 2),
 (4, '2020-01-02 07:40:33', 2),
 (3, '2020-11-13 16:55:13', 3),
 (2, '2020-12-05 18:38:30', 3),
 (1, '2021-08-15 17:10:10', 4),
 (1, '2022-01-09 01:44:33', 5),
 (5, '2020-08-06 15:23:43', 5),
 (4, '2017-01-24 00:31:17', 6),
 (6, '2017-10-12 12:35:20', 6),
 (7, '2011-12-15 22:30:49', 7),
 (7, '2012-03-17 14:56:41', 8),
 (8, '2022-02-24 21:14:22', 9),
 (9, '2015-12-13 08:30:22', 10);

  INSERT INTO SpotifyClone.Seguindo (usuario_id, artista_id_seguindo)
 VALUES (1, 1),
 (1, 2),
 (1, 3),
 (2, 1),
 (2, 3),
 (3, 2),
 (4, 4),
 (5, 5),
 (5, 6),
 (6, 6),
 (6, 1),
 (7, 6),
 (9, 3),
 (10, 2);
 
 