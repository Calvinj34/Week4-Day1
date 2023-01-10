-- 1. How many actors are there with the last name ‘Wahlberg’?

-- 2
-- SELECT *
-- FROM actor
-- WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- 4802
-- SELECT count(amount)
-- FROM payment
-- WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)

-- Multiple films with 8 
-- SELECT count(film_id), film_id
-- FROM inventory
-- GROUP BY  film_id; 


-- 4. How many customers have the last name ‘William’?
-- 0
-- SELECT *
-- FROM customer
-- WHERE Last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
-- 2
-- SELECT SUM(amount),staff_id
-- FROM payment
-- WHERE amount>0
-- GROUP BY staff_id



-- 6. How many different district names are there?
-- 378
-- SELECT district
-- FROM address
-- GROUP BY district




-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Lambs Cincinatti 15 ID 508-

-- SELECT count(actor_id),film_id
-- FROM film_actor
-- GROUP BY  film_id
-- ORDER BY count(actor_id) DESC;



-- Select title, film_id
-- FROM film
-- GROUP BY film_id
-- HAVING film_id = 508;



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 21
-- Select count(last_name)
-- FROM customer
-- WHERE last_name Like '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- 1257
-- SELECT SUM(amount), customer_id, rental_id
-- FROM payment
-- WHERE customer_id BETWEEN 380 AND 430
-- GROUP BY customer_id, rental_id
-- HAVING rental_id>250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- 5
-- PG-13
-- SELECT rating, count(rating)
-- FROM film
-- GROUP BY rating;


