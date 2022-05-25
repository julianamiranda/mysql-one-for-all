SELECT 
	MIN(subscription.subscription_price) AS faturamento_minimo,
    MAX(subscription.subscription_price) AS faturamento_maximo,
    ROUND(AVG(subscription.subscription_price), 2) AS faturamento_medio,
    SUM(subscription.subscription_price) AS faturamento_total
FROM SpotifyClone.subscription AS subscription
JOIN SpotifyClone.users AS users ON subscription.subscription_id = users.subscription_id;