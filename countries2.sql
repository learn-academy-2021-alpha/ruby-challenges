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
select name, governmentform, indepyear from country where not (governmentform like ‘%epublic’) and indepyear > 1945

-- ORDER BY
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
select name, lifeexpectancy from country where lifeexpectancy !=0 order by lifeexpectancy limit 15
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
select name, lifeexpectancy from country where lifeexpectancy !=0 order by lifeexpectancy desc limit 15
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
select name, population, surfacearea, population/surfacearea as density from country where population !=0 order by density limit 5
-- Which countries have the highest population density?(HINT: starts with Macao)
select name, population, surfacearea, population/surfacearea as density from country where population !=0 order by density desc limit 5
-- Which is the smallest country by area? (HINT: .4)
select name, surfacearea from country where surfacearea !=0 order by surfacearea limit 1
-- Which is the smallest country by population? (HINT: 50)?
select name, population from country where population !=0 order by population limit 1
-- Which is the biggest country by area? (HINT: 1.70754e+07)
select name, surfacearea from country where surfacearea !=0 order by surfacearea desc limit 1
-- Which is the biggest country by population? (HINT: 1277558000)
select name, population from country where population !=0 order by population desc limit 1
-- Subqueries: WITH
-- What are the forms of government for the top ten countries by surface area? (HINT: Number 10 is Kazakstan)
with top_ten as (select name, surfacearea, governmentform from country order by surfacearea desc limit 10)
select name, governmentform
from top_ten

-- What are the forms of government for the top ten richest nations by gnp?
with top_ten as (select name, gnp, governmentform from country order by gnp desc limit 10)
select name, governmentform, gnp
from top_ten

-- Aggregate Functions: GROUP BY
-- Which region has the highest average gnp? (HINT: North America)
select region, avg(gnp) from country group by region order by avg desc

-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)select name, headofstate, population, gnp, lifeexpectancy from country where headofstate like 'Jiang Zemin'

select headofstate, population from country order by population desc limit 1
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
select headofstate, sum(surfacearea) from country group by headofstate order by sum desc
-- What is the average life expectancy for all continents?
select continent, avg(lifeexpectancy) from country group by continent order by avg
-- What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(governmentform)FROM country GROUP BY governmentform order by count desc limit 1
-- How many countries are in North America?
select continent, count(name) from country where continent='North America' group by continent order by count
-- What is the total population of all continents?
select sum(population) from country
-- Stretch Challenges
-- Which countries have the letter ‘z’ in the name? How many?
select name from country where name in('z')
-- Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
-- Of the smallest 10 countries by population, which has the biggest per capita gnp?
-- Of the biggest 10 countries by area, which has the biggest gnp?
-- Of the biggest 10 countries by population, which has the biggest per capita gnp?
-- What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
-- What year is this country database from? Cross reference various pieces of information to determine the age of this database.
