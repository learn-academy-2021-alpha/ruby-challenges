-- code, name, contintent, region, surfacearea, indepyear, population, gnp, localname, governmentform, headofstate, capital

SELECT * FROM country

SELECT * FROM country LIMIT 10

SELECT * FROM country WHERE surfacearea > 1000000

SELECT name, surfacearea FROM country WHERE surfacearea > 1000000

SELECT name, population FROM country WHERE population !=0 ORDER BY population

SELECT name, population FROM country WHERE population !=0 ORDER BY population DESC LIMIT 10

SELECT name, governmentform FROM country

SELECT name, governmentform FROM country WHERE governmentform LIKE 'Republic'

SELECT name, governmentform FROM country WHERE governmentform LIKE '%epublic'
-- % creates a wildcard include anything that has these characters doesnt matter what comes first, can put at the end too and include anything after
SELECT name, governmentform 
FROM country 
WHERE governmentform 
LIKE '%epublic%'
-- can also be written going down it doesn't matter