SELECT D."name" , E."per_pupil_expenditure" , S."exemplary"
FROM districts D
JOIN "expenditures" E
ON D."ID" = E."district_id"
JOIN "staff_evaluations" S
ON D."ID" = S."district_id"
WHERE D."type" = 'Public School District'

AND
    E.'per_pupil_expenditure' > (
        SELECT AVG("per_pupil_expenditure")
            FROM "expenditures"
    )
AND
    S.'exemplary' > (
        SELECT AVG("exemplary")
        FROM "staff_evaluations"
    )

ORDER BY S."exemplary" DESC , E."per_pupil_expenditure" DESC ;



