SELECT SALARIES.Salary
FROM Players
JOIN Performances ON Players.id = Performances.player_id
JOIN Salaries ON Players.id = Salaries.player_id AND performances.year = salaries.year
WHERE Performances.year = '2001'
ORDER BY Performances.HR DESC
LIMIT 1

