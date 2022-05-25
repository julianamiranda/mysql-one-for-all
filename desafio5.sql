SELECT
  song.song_name AS cancao,
  COUNT(history_data.song_id) AS reproducoes
FROM SpotifyClone.song AS song
JOIN SpotifyClone.history_data AS history_data ON song.song_id = history_data.song_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2; 