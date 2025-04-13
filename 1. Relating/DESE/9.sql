SELECT "NAME"
FROM "districts" D
JOIN "expenditures" E
ON D."ID" = E."district_id"
ORDER BY E."pupils"
LIMIT 1;
