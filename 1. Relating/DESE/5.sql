SELECT "CITY" , COUNT("CITY")
FROM "schools"
WHERE "TYPE" = 'Public School'
GROUP BY "CITY"
HAVING COUNT("CITY") <=3
ORDER BY COUNT("CITY") DESC , "CITY";


