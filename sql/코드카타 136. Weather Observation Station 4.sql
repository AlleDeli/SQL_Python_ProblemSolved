-- https://www.hackerrank.com/challenges/weather-observation-station-4/

SELECT COUNT(city) - COUNT(DISTINCT(city)) as answer
FROM station
;
