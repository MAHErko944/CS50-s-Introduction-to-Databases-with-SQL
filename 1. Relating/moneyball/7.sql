SELECT PLAYERS.first_name , PLAYERS.last_name
FROM Players
JOIN Salaries ON Salaries.Player_id = PLAYERS.id

ORDER BY Salaries.salary DESC
LIMIT 1;
