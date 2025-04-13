SELECT COUNT(E."pupils")
FROM "expenditures" E
JOIN "districts" D
ON D."ID" = E."district_id";
