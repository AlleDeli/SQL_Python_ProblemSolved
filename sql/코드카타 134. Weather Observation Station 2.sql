-- https://www.hackerrank.com/challenges/weather-observation-station-2/

SELECT ROUND(SUM(LAT_N), 2) as lat,
       ROUND(SUM(LONG_W), 2) as lon
FROM station
;
