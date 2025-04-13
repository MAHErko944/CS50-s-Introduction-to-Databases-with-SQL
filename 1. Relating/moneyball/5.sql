SELECT  teams.name
FROM Players
JOIN Performances ON Players.id = Performances.Player_id
JOIN TEAMS ON Performances.team_id = Teams.id
WHERE Players.first_name = 'Satchel' AND Players.last_name = 'Paige'
