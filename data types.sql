-- data types
-- number=> int, decimal

use regex1;
create table yash(salary tinyint);
insert into yash values(127);
insert into yash values(120);

create table yash2(salary float, price double);
insert into yash2 values(100.3445523, 671.23563);

-- string values char vs varchar()
-- fixed length/size character
-- variable length character

create table yash3(name varchar(20), gender char(20));
insert into yash3 values('tushar','male'), ('aman','male'), ('st','female');

select * from yash3;
select *, length(name), length(gender) from yash3;

-- char remove/truncate all the whitespace from the last and varchar
-- will truncate the whitespace upto the length




-- ddl
-- create (table)
-- drop
-- truncate
-- alter

create table raj123(col int);
-- create a table using select(CTAS)

create table actor_cp as
select first_name, last_name from sakila.actor;

select * from actor_cp;

-- drop => table structure and data both are delete 
drop table actor_cp;

create table actor_cp as
select first_name as first , last_name as last from sakila.actor
where actor_id between 10 and 14;

select * from actor_cp;


-- alter table to add column in my table

alter table actor_cp add column salary int;

alter table actor_cp add constraint new_key primary key(first);

alter table actor_cp drop column last;            -- drop column

alter table actor_cp rename column salary to new_salary;  -- change column name 

desc actor_cp;

select * from actor_cp;

-- dml statement
-- insert
-- update set col=value
set sql_safe_updates=0;

update actor_cp set new_salary=100;
update actor_cp set new_salary=600 where first='UMA';

select * from actor_cp;



