SELECT "first_name", "last_name", (2024 - "birth_year") AS "age"
FROM "players"
WHERE "birth_state" <> 'USA'
ORDER BY "age" DESC LIMIT 15;
