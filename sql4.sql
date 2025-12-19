use world;
select * from city;  -- is the foregion key


describe city;
select * from country;
select count(code), count(distinct code) from country;

select cy.id, cy.name , cy.countrycode from city as cy;

select cnt.code, cnt.name, cnt.continent from country as cnt;

-- join function

select cy.id, cy.name , cy.countrycode, cnt.code, cnt.name, cnt.continent from city as cy
join 
country as cnt
where cy.countrycode=cnt.code;

select ct.name, ct.population,ctry.name, ctry.governmentform from city as ct
join
country as ctry
where ct.countrycode=ctry.code;

select ctry.name, ctry.governmentform from country as ctry;

select * from country;
