SELECT YEAR , HR
from PLAYERS
JOIN performances ON PLAYERS.id = performances.PLAYER_id
WHERE first_name = 'Ken' AND last_name = 'Griffey' AND birth_year = '1969'
ORDER BY YEAR DESC
