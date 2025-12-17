use sakila;
show tables;
select * from payment;
select count(*) from payment where amount=2.99;
select amount, count(*) from payment group by amount;
select customer_id, sum(amount) from payment group by customer_id;

-- may month me har ek customer ne kitni transaction ki
select customer_id, count(amount) from payment where month(payment_date)=5 group by customer_id;

-- find out the max amount of transaction , the avg transaction amount and the 
-- total transaction amount done through each staff

select staff_id, max(amount), avg(amount), sum(amount) from payment group by staff_id;

select staff_id, max(amount), avg(amount), sum(amount) from payment where customer_id%2=0 group by staff_id;

-- get the amount and total transaction 
-- staff_id=1 (filter)
-- having total transaction>30 

SELECT amount, COUNT(amount) from payment  where STAFF_ID = 1
group by amount having COUNT(AMOUNT)>30;

-- find out the no of customer  along with 
select month(payment_date),count(customer_id),sum(amount),avg(amount) from payment 
where staff_id=1 or staff_id=2 group by month(payment_date);

select month(payment_date), year(payment_date), count(customer_id),sum(amount),avg(amount) from payment 
where staff_id=1 or staff_id=2 group by year(payment_date), month(payment_date);



