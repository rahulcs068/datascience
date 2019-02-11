use world;
show tables;
describe city;
describe country;
describe countrylanguage;

# 1. count of cities
Select count(*) from city;

# 2. Country having highest number of cities
Select CountryCode, count( Name) as CitiesCount from city
Group by CountryCode
Order by CitiesCount desc;


#method2
select country.name as AAAAA, count(*) as cnumber 
from city inner join country 
on city.CountryCode = country.Code group by CountryCode
having cnumber >= (select count(*) from city group by CountryCode);



# 3. Which language is its country’s official language and spoken by 80 to 90 percent of people
select * from countrylanguage where IsOfficial = "T" and Percentage between 80 and 90
order by Percentage desc;


# 4. In India, how many cities have been listed in “Maharashtra” district?
select count(*) as count_MH from city where District = "Maharashtra";

# 5. Which country has the maximum population (if population is taken as the population from the country table)
select * from Country where population = (select max(population) from country);

# 6. Which language is spoken in the maximum number of countries?
select language,count(*) as number from countrylanguage 
group by language 
order by number desc
limit 1;

Select * from 
(
select language,count(*) as tttt from countrylanguage
group by language
) A
Where tttt = (Select max(tttt) from A);


Select language, max(tttt) from 
(
select language,count(*) as tttt from countrylanguage
group by language
) A
Where tttt = max(tttt);


select max(count(*)) from countrylanguage
group by language;


select c.name, cl.language
from country c inner join countrylanguage cl on c.code=cl.countrycode
group by c.name, cl.language
having count(cl.countrycode)>= 10; 

max(select count(*) as cnumber from countrylanguage group by language );


# 7. Among the following, which language is the official language of the more number of countries?
select language,count(*) as number from country inner join countrylanguage on code = CountryCode 
where IsOfficial = "T" and language in ('Tamil','Portuguese','Dutch','Turkish')
group by language 
order by number desc;

# 8. How many cities in North America are there where English is the official language
Select count(*) from city inner join country on city.CountryCode = country.code inner join countrylanguage on country.code = countrylanguage.CountryCode
where
country.Continent = "North America" 
and 
countrylanguage.language = "English"
and 
countrylanguage.IsOfficial = "T";

# 9. Which city has the least population among these
#Method 1:
Select * from city inner join country on city.CountryCode = country.code inner join countrylanguage on country.code = countrylanguage.CountryCode
where
country.Continent = "North America" 
and 
countrylanguage.language = "English"
and 
countrylanguage.IsOfficial = "T"
and
city.Population >= all(Select city.population from city inner join country on city.CountryCode = country.code inner join countrylanguage on country.code = countrylanguage.CountryCode
where
country.Continent = "North America" 
and 
countrylanguage.language = "English"
and 
countrylanguage.IsOfficial = "T");

#Method 2 - Smart Method (especially in a MCQ test)
select ID, Name, Population 
from city 
where Name="Phoenix" or Name="Los Angeles" or Name="Chicago" or Name="New York"
order by Population asc;

# 10. How many row entries are there with any value in the country table being NA
select count(*) from country
where Code is null or Name is null or Continent is null or region is null 
or surfacearea is null or indepYear is null or Population is null 
or LifeExpectancy is null or GNP is null or GNPOld is null or LocalName is null 
or GovernmentForm is null or HeadofState is null or Capital is null or Code2 is null;

# 11. How many countries are there whose name starts with I and ends with A
select * from country where name like "I%A";

# 12. Which continent has least surface area
select continent, sum(SurfaceArea) from country group by Continent order by sum(SurfaceArea) desc;



select c.name, cl.language
from country c inner join countrylanguage cl on c.code=cl.countrycode
group by c.name,cl.language
having count(cl.countrycode) >= (select count(countrycode) from countrylanguage groupby language);



