use sakila;
select * from actor;
select * from film_actor;
select count(film_id), count(distinct(film_id)) from film_actor;
select count(actor_id), count(distinct(actor_id)) from actor;

select a.first_name, a.actor_id, fa.film_id from actor as a
join film_actor as fa
where a.actor_id=fa.actor_id;

select * from film;
select ft.film_id, f.title, ft.actor_id from film as f
join film_actor as ft
where f.film_id=ft.film_id;
select * from film_actor;


-- actor name or usne kis film me kam kiya uska name show karna h 

select * from actor;
select * from film;
select a.first_name, f.title from actor as a
join film_actor as fa
join film as f
where a.actor_id=fa.actor_id and fa.film_id=f.film_id;


