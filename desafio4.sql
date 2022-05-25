SELECT 
	users.user_name AS usuario, 
	IF(MAX(history_data.play_date) LIKE '2021%', "Usuário ativo", "Usuário inativo") "condicao_usuario"
FROM SpotifyClone.users AS users
JOIN SpotifyClone.history_data AS history_data ON users.user_id = history_data.user_id
GROUP BY usuario ORDER BY usuario;