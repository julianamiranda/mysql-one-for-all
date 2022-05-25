SELECT
  song.song_name AS nome,
  COUNT(history_data.song_id) AS reproducoes
FROM SpotifyClone.song AS song
JOIN SpotifyClone.history_data AS history_data ON song.song_id = history_data.song_id
JOIN SpotifyClone.users AS users ON users.user_id = history_data.user_id
WHERE users.subscription_id IN (1,4)
GROUP BY nome ORDER BY nome;