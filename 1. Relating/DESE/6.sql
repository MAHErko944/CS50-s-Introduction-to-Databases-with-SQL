SELECT "NAME"
FROM "SCHOOLS" S
JOIN "graduation_rates" G
ON S."ID" = G."school_id"
WHERE "graduated" = 100;
