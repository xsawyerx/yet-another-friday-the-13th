--- using prepopulated month and year tables
SELECT CAST(CONCAT_WS("-",year,month,13) AS DATE) AS date
FROM year CROSS JOIN month
WHERE year BETWEEN 2012 AND 2020
GROUP BY date
HAVING DAYOFWEEK(date) = 6
ORDER BY date
