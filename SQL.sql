
use world;

show tables;

select * from country;

select * from country where continent='Asia';

select name, continent from country where indepyear=1991;

select * from country where continent in ('Asia','Africa');

select name, continent from country where indepyear in (1991,1960);
select name, continent from country where indepyear not in (1991,1960);


select * from country where indepyear between 1960 and 1991;
select * from country where indepyear not between 1960 and 1991;

select name, continent from country where region != 'South Europe';
select name, continent, population,population*1/10+population from country;
select * from country where lifeExpectancy in (75.1,77.8,63.7);
select name, population, region from country where population not between 5000 and 300000;


-- like operator 
-- to match a pattern
-- pattern means name => letter start , letter include , letter end
-- % = special character / wildcard character 
-- % : zero character or more character 

select * from country where name like '____';


select * from country where name like '_u%a%';

select name, continent from country where name like 'a%';
select name , continent from country where name like '%t_';
select name , continent from country where name like '___%';
select name , continent,region from country where region like '_a%a_';
select name , continent,region from country where region like '__c%sia';
select name , region,continent from country where continent in ('North america','South America');






