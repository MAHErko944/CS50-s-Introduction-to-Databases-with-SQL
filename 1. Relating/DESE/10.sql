SELECT D."NAME" , E."per_pupil_expenditure"
FROM "districts" D
JOIN "expenditures" E
ON D."ID" = E."district_id"
WHERE D."TYPE" = 'Public School District'
ORDER BY E."per_pupil_expenditure" DESC
LIMIT 10;
