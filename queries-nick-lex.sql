-- Challenges: SQL Country Database
-- Save your queries in a file if you want to keep them for posterity.

-- WHERE
-- What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name LIKE 'United States'
-- What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
WHERE name LIKE 'United States'
-- Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, population, lifeexpectancy
FROM country
WHERE continent='Africa'
AND population < 30000000
AND lifeexpectancy > 45
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%epublic'
-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%epublic'
AND indepyear > 1945
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform NOT LIKE '%epublic'
AND indepyear > 1945


-- ORDER BY
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy
LIMIT 15
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy > 0
ORDER BY lifeexpectancy DESC
LIMIT 15
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density
LIMIT 5
-- Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density DESC
LIMIT 5
-- Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea
LIMIT 1

-- Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population
LIMIT 1

-- Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1
-- Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population DESC
LIMIT 1

-- Subqueries: WITH
-- What are the forms of government for the top ten countries by surface area? (HINT: Number 10 is Kazakstan)
WITH top_ten AS (SELECT name, governmentform, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 10)
SELECT name, governmentform
FROM top_ten

-- What are the forms of government for the top ten richest nations by gnp?
WITH top_ten AS (SELECT name, governmentform, gnp FROM country ORDER BY gnp DESC LIMIT 10)
SELECT name, governmentform
FROM top_ten

-- Aggregate Functions: GROUP BY
-- Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY AVG DESC
LIMIT 1


-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT headofstate, SUM(population)
FROM country
GROUP BY headofstate
ORDER BY SUM DESC
LIMIT 1

-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY SUM DESC
LIMIT 1

-- What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy)
FROM country
GROUP BY continent

-- What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(*)
FROM country
GROUP BY governmentform
ORDER BY count DESC

-- How many countries are in North America?
SELECT continent, COUNT(name)
FROM country
WHERE continent='North America'
GROUP BY continent

-- What is the total population of all continents?
SELECT continent, SUM(population)
FROM country
GROUP BY continent

-- Stretch Challenges
-- Which countries have the letter ‘z’ in the name? How many?
SELECT name
FROM country
WHERE name LIKE '%z%'

-- Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
WITH top_ten AS (SELECT name, surfacearea, gnp FROM country ORDER BY surfacearea LIMIT 10)
SELECT name, gnp
FROM top_ten
ORDER BY gnp DESC


-- Of the smallest 10 countries by population, which has the biggest per capita gnp?
-- Of the biggest 10 countries by area, which has the biggest gnp?
-- Of the biggest 10 countries by population, which has the biggest per capita gnp?
-- What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
-- What year is this country database from? Cross reference various pieces of information to determine the age of this database.
