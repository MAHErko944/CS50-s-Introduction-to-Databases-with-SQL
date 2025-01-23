SELECT title, season, air_date
FROM episodes
WHERE air_date > '2005-12-31'
  AND (season = 3 OR season = 4);
