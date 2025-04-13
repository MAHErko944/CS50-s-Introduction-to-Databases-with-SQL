SELECT first_name , last_name , Salary
FROM Players
JOIN Salaries ON Players.id = Salaries.player_id
WHERE Salaries.year = '2001'
ORDER BY salary ASC , first_name ASC, last_name ASC
LIMIT 50
