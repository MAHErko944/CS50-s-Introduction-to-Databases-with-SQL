SELECT TEAMS.name , ROUND(AVG(SALARIES.salary) , 2) AS "average salary"
FROM TEAMS
JOIN SALARIES ON Teams.id = Salaries.team_id
WHERE Salaries.year = '2001'
GROUP BY TEAMS.name
ORDER BY ROUND(AVG(SALARIES.salary) , 2) ASC
LIMIT 5
