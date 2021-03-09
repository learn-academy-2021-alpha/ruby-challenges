-- code, name, continent, region, 



SELECT * FROM country

SELECT * FROM country LIMIT 10

SELECT * FROM country WHERE surfacearea > 1000000

SELECT name, surfacearea From country WHERE surfacearea > 1000000

Select name, population FROM country 
WHERE population !=0 ORDER BY population

Select name, population FROM country 
WHERE population !=0 ORDER BY population DESC LIMIT 10

SELECT name, governmentform FROM country

SELECT name, governmentform FROM country WHERE governmentform
LIKE  'Republic'

SELECT name, governmentform FROM country WHERE governmentform
LIKE  '%epublic'

SELECT name, governmentform FROM country WHERE governmentform
LIKE  '%epublic' ORDER BY governmentform DESC

-- AS

SELECT name , population, surfacearea, population / surfacearea AS density FROM country

SELECT name , population, surfacearea, population / surfacearea AS density 
FROM country
ORDER by density DESC

--WITH

WITH top_ten AS (SELECT name, surfacearea from country ORDER BY surfacearea DESC LIMIT 10)
SELECT name 
FROM top_ten

SELECT SUM(surfacearea)
FROM top_ten

-- GROUP BY

SELECT region, AVG(lifeexpectancy)
FROM country
GROUP BY region;