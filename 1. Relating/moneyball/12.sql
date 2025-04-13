
SELECT first_name, last_name
FROM (
    SELECT PLAYERS.ID, PLAYERS.FIRST_NAME , PLAYERS.LAST_NAME
    FROM PLAYERS
    JOIN salaries ON PLAYERS.id = salaries.player_id
    JOIN Performances ON PLAYERS.id = Performances.PLAYER_ID
        AND salaries.year = Performances.year
    WHERE salaries.year = 2001
        AND Performances.H > 0
    ORDER BY (salaries.salary / Performances.H) ASC, PLAYERS.FIRST_NAME , PLAYERS.LAST_NAME
    LIMIT 10
)
INTERSECT
SELECT first_name, last_name
FROM (
    SELECT PLAYERS.ID, PLAYERS.FIRST_NAME , PLAYERS.LAST_NAME
    FROM PLAYERS
    JOIN salaries ON PLAYERS.id = salaries.player_id
    JOIN performances ON PLAYERS.id = Performances.player_id AND salaries.year = performances.year
    WHERE salaries.year = 2001
        AND Performances.RBI > 0
    ORDER BY (salaries.salary / Performances.RBI) ASC, PLAYERS.first_name, PLAYERS.last_name
    LIMIT 10
)
ORDER BY last_name, first_name;
