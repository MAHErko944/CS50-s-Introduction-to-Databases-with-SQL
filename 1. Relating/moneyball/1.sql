SELECT year , Round(AVG(salary) , 2) AS "average salary"
FROM
salaries
GROUP BY YEAR
ORDER BY YEAR DESC

