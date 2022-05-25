SELECT 
	users.user_name AS usuario, 
	COUNT(history_data.user_id) AS qtde_musicas_ouvidas, 
	ROUND(SUM(song.song_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS users
JOIN SpotifyClone.history_data AS history_data ON users.user_id = history_data.user_id
JOIN SpotifyClone.song AS song ON song.song_id = history_data.song_id
GROUP BY usuario ORDER BY usuario; 