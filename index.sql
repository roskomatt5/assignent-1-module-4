-- Question 1 --
select count(distinct actor_id)
from actor 
where last_name = 'Wahlberg'

-- Question 2 --

select count(distinct payment_id) 
from payment 
where amount between 3.99 and 5.99

--Question 3 --
 select film_id, count(*)
 from inventory 
 group by 1 
 order by 2 desc
 limit 1
-- Question 4 --
select count(distinct customer_id)
from customer
where last_name = 'William'

-- Question 5 --
select staff_id, count(distinct sale_id) as sales
from sales
group by 1
order by 2 desc 
limit 1

-- Question 6 --
select count(distinct concat(first_name,' ',last_name)) as unique_full_name
from actor
--Question 7 --
select film_id as film, 
count(distinct actor_id) as actor_count
from film_actor
group by 1 
order by 2 desc 
limit 1
--Question 8--
select count(distinct customer_id)
from customer
where store_id = 1
and last_name like '%es'
--Question 9--
select count(distinct amount)
from payment 
where customer_id between 380 and 430
having count(distinct rental_id) > 250

--question 10
-- How many rating categories are there?
select 
count(distinct rating) as rating_category_count
from film
--What rating has the most movies total
select  rating, count(distinct film_id) as film count
from film
group by 1
order by 2
limit 1
