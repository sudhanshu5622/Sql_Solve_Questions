SELECT player_id, MIN(even_date) AS Login_id
FROM Activity
GROUP BY player_id