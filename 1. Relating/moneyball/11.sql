SELECT PLAYERS.FIRST_NAME , PLAYERS.LAST_NAME , (SALARIES.SALARY / Performances.H) 'dollars per hit'
FROM PLAYERS
JOIN SALARIES ON PLAYERS.ID = SALARIES.PLAYER_ID
JOIN Performances ON PLAYERS.ID = Performances.PLAYER_ID AND Performances.YEAR = SALARIES.YEAR
WHERE SALARIES.YEAR = '2001' AND  Performances.H > 0
ORDER BY (SALARIES.SALARY / Performances.H) ASC , PLAYERS.FIRST_NAME , PLAYERS.LAST_NAME
LIMIT 10
