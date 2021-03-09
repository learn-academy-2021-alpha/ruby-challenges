select name, surfacearea from country where surfacearea > 10000000

select name, population from country where population !=0 order by  population

select name, population from country where population !=0 order by  population desc limit 10

select name, govermentform from country where govermentform like 'Republic'


select name, govermentform from country where govermentform like '%epublic' 
// % will give you anything matching anything with the data//

select name, population from country where name like 'united states'


select name, population, surfacearea, population/surfacearea as density from country order by density desc


with top_ten as (select name, surfacearea, governmentform from country order by surfacearea desc limit 10)
select name, governmentform
from top_ten
//then call that new table in a new query 


SELECT SUM(population)
FROM country;


-- Challenges: SQL Country Database
-- Save your queries in a file if you want to keep them for posterity.

-- WHERE
-- What is the population of the US? (HINT: 278357000)
select name, population from country where name like 'United States'

-- What is the area of the US? (HINT: 9.36352e+06)

select name, surfacearea from country where name like 'United States'

-- Which countries gained their independence before 1963?

select name, indepyear from country where indepyear < 1963

-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)



select name, continent, population, lifeexpectancy from country where lifeexpectancy < 45 


-- Which countries are something like a republic? (HINT: Are there 122 or 143?)

select name, governmentform from country where governmentform like '%epublic'

-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
select name, governmentform like '%epublic', indepyear from country where indepyear < 1945;

-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
-- ORDER BY
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
-- Which countries have the highest population density?(HINT: starts with Macao)
-- Which is the smallest country by area? (HINT: .4)
-- Which is the smallest country by population? (HINT: 50)?
-- Which is the biggest country by area? (HINT: 1.70754e+07)
-- Which is the biggest country by population? (HINT: 1277558000)
-- Subqueries: WITH
-- What are the forms of government for the top ten countries by surface area? (HINT: Number 10 is Kazakstan)
-- What are the forms of government for the top ten richest nations by gnp?
-- Aggregate Functions: GROUP BY
-- Which region has the highest average gnp? (HINT: North America)
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
-- What is the average life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
-- How many countries are in North America?
-- What is the total population of all continents?
-- Stretch Challenges
-- Which countries have the letter ‘z’ in the name? How many?
-- Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
-- Of the smallest 10 countries by population, which has the biggest per capita gnp?
-- Of the biggest 10 countries by area, which has the biggest gnp?
-- Of the biggest 10 countries by population, which has the biggest per capita gnp?
-- What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
-- What year is this country database from? Cross reference various pieces of information to determine the age of this database.