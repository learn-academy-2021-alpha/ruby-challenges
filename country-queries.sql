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