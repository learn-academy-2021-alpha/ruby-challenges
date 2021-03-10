-- code, name, continent, region, surfacearea, indepyear, population, gnp, localname, governmentform, headofstate, capital
-- country is a table in the counntries database
SELECT * FROM country
-- return all info from country file

SELECT * FROM country LIMIT 10
-- limit the view to 10 rows

SELECT * FROM country WHERE surfacearea > 1000000 
-- gives data where the surfacearea is greater than 1mil

SELECT name, surfacearea FROM country WHERE surfacearea > 1000000
-- return only the name and surfacearea columns

SELECT name, population FROM country

SELECT name, population FROM country ORDER BY population 
-- order by population from least to greatest

SELECT name, population FROM country WHERE population !=0 ORDER BY population
-- dont return any selections where there is no population

SELECT name, population FROM country WHERE population !=0 ORDER BY population DESC 
-- orders from greatest to least 

SELECT name, governmentform FROM country

SELECT name, governmentform FROM country WHERE governmentform LIKE 'Republic'
-- LIKE is a matcher, so return all selections where Republic is the government form

SELECT name, governmentform FROM country WHERE governmentform LIKE '%epublic'
-- whatever comes before the % (wildcard) goes, so federal republic will be includes, along with people's republic, not JUST republic

-- AS would create temporary or alias columns
SELECT name, population, surfacearea, population / surfacearea AS density FROM country
-- here density column is being created to hold the product of the division between population and surfacearea

SELECT name, population, surfacearea, population / surfacearea AS density FROM country ORDER BY density DESC LIMIT 1
-- we can use that new density column to continue manipulating the selection, you can also order by adding DESC to the end, and limit to 1 selection (the highest one)

-- WITH claus -> you can create an alias table in the same way AS creates an alias column

-- (example question to use WITH on from syllabus challenges): What are the forms of government for the top ten countries by surface area? (HINT: Number 10 is Kazakstan)
WITH top_ten AS (SELECT name, surfacearea, governmentform FROM country ORDER BY surfacearea DESC LIMIT 10)
-- we can use this ^ set of info and wrap it inside of a AS claus and also give it a name 'top_ten' and add WITH infront of it to create the new alias table which will be able to be references like this:
SELECT name, governmentform FROM top_ten 

SELECT SUM(population) FROM country
-- sum is an aggregate function, allows you to perform behavior on a set of data. This would add up all the populations in the rows. 

WITH top_ten2 AS (SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 10)
-- here you can get the sum of the alias table you created
SELECT SUM (surfacearea) FROM top_ten2

-- GROUP BY is used together with the SELECT statement to group of set of rows that have similar data. 
SELECT region, AVG(lifeexpectancy) FROM country GROUP BY region; --
-- by region, average up the lifeexpectancy and then group by the region, so its taking all the countries in a specific region, taking the average of all of the countries in that region and grouping them by the region.

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

-- WHERE 
-- What is the population of the US? (HINT: 278357000)
SELECT name, population FROM country WHERE name LIKE 'United States'
SELECT name, population FROM country WHERE population = 278357000
-- What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea FROM country WHERE name LIKE 'United States' 
-- Which countries gained their independence before 1963?
SELECT name, indepyear FROM country WHERE indepyear < 1963
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, population, lifeexpectancy 
FROM country 
WHERE continent LIKE 'Africa' AND population < 30000000 AND lifeexpectancy > 45
ORDER BY lifeexpectancy DESC
-- Which countries are something like a republic? (HINT: Are there 122 or 143?).
SELECT name, governmentform FROM country WHERE governmentform LIKE '%epublic'   
-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries).
SELECT name, governmentform, indepyear FROM country WHERE governmentform LIKE '%epublic'  AND indepyear > 1945
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries).
SELECT name, governmentform, indepyear FROM country WHERE indepyear > 1945 AND governmentform NOT LIKE '%epublic'

-- ORDER BY ----------------------------------------------------------

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy FROM country ORDER BY lifeexpectancy LIMIT 15

-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy FROM country 
WHERE lifeexpectancy >= 0
ORDER BY lifeexpectancy
DESC LIMIT 15

-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, population/surfacearea AS density
FROM country 
WHERE population/surfacearea > 0
ORDER BY density
LIMIT 5

-- Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, population/surfacearea AS density
FROM country 
WHERE population/surfacearea > 0
ORDER BY density
DESC LIMIT 5

-- Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea FROM country 
WHERE surfacearea > 0
ORDER BY surfacearea
LIMIT 1

-- Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea FROM country 
WHERE surfacearea > 0
ORDER BY surfacearea
DESC LIMIT 1

-- Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population FROM country 
WHERE population > 0
ORDER BY population
LIMIT 1

--Subqueries WITH ----------------------------------------------------

-- What are the forms of government for the top ten countries by surface area? (HINT: Number 10 is Kazakstan)
WITH forms_of_government AS (SELECT name, governmentform, surfacearea 
FROM country 
WHERE surfacearea > 0 
ORDER BY surfacearea
DESC LIMIT 10)
SELECT name, governmentform FROM forms_of_government

-- What are the forms of government for the top ten richest nations by gnp?
WITH rich_governments AS (SELECT name, governmentform, gnp 
FROM country 
WHERE gnp > 0 
ORDER BY gnp
DESC LIMIT 10)
SELECT name, governmentform FROM rich_governments

-- Aggregate Functions: GROUP BY ----------------------------------------

-- Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp) 
FROM country 
GROUP BY region
ORDER BY AVG(gnp) DESC

-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT headofstate, SUM(population) 
FROM country 
GROUP BY headofstate 
ORDER BY SUM(population) DESC 

-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, SUM(surfacearea) 
FROM country 
GROUP BY headofstate 
ORDER BY SUM(surfacearea) DESC 

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
WHERE continent = 'North America'
GROUP BY continent 

-- What is the total population of all continents?
SELECT continent, SUM(population)
FROM country
GROUP BY continent