SELECT "NAME" , "pupils"
FROM "districts" D
JOIN "expenditures" E
ON D."ID" = E."district_id";
