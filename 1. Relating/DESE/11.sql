SELECT S."NAME" , G."graduated" , E."per_pupil_expenditure"
FROM "SCHOOLS" S
JOIN "graduation_rates" G
ON S."ID" = G."school_id"
JOIN "expenditures" E
ON S."district_id" = E."district_id"
ORDER BY E."per_pupil_expenditure" DESC , S."NAME";
