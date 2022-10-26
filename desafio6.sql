SELECT MIN(plano.valor_plano) AS 'faturamento_minimo',
MAX(plano.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(plano.valor_plano), 2) AS 'faturamento_medio',
SUM(plano.valor_plano) AS 'faturamento_total' FROM SpotifyClone.Planos AS plano
INNER JOIN SpotifyClone.Usuarios AS user
ON plano.id_plano = user.id_plano;