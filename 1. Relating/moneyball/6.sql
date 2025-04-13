SELECT Teams.name , SUM(Performances.H) AS 'total hits'
FROM Performances
JOIN TEAMS ON TEAMS.id = Performances.team_id
WHERE Performances.year = '2001'
GROUP BY Teams.name
ORDER BY SUM(Performances.H) DESC
LIMIT 5


