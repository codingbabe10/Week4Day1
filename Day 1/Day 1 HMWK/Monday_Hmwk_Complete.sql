--1. How many actors are there with the last name ‘Wahlberg’? 
SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Answer = 2


--2. How many payments were made between $3.99 
--and $5.99?
SELECT COUNT (DISTINCT amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Answer = 0

--3. What film does the store have the most of? 
--(search in inventory)

-- first I tried this to get a general idea of what was in inventory 
SELECT *
FROM inventory
ORDER BY film_id DESC



-- showing what I tried until I got to answer
SELECT *
FROM inventory
GROUP BY film_id
ORDER BY COUNT film_id DESC



--- showing my work....
SELECT *
FROM inventory, film_id
ORDER BY COUNT (*) DESC




-- and finally got it 
SELECT film_id, COUNT(*) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC;


-- Answer: The film store has the most of film_id #8


--4.How many customers have the last name ‘William’? 


SELECT *
FROM customer
ORDER BY last_name DESC

--Answer: There is no customer with the last name William however this is 1 customer with the last name Williams, with an S at the end.


--5. What store employee (get the id) sold the most rentals?

SELECT *
FROM employee

-- how do I find out names of the columns that I am extracting the data from?
--employee, id, rentals isnt pulling anything up?



--6. How many different district names are there? 

SELECT *
FROM district_name
ORDER BY SUM 

-- same question as above district_name, district, name is not pulling anything up



--7. What film has the most actors in it? (use film_actor table and get film_id) 

---first try:
SELECT  Film_actor COUNT(*) AS film_count
FROM film_id
GROUP BY film_id
ORDER BY film_actor DESC;



-- next try, figured out the answer 
SELECT film_id, COUNT(*) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC





--Answer: film_id 508 has the most actors in it; 15 actors. 


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 


SELECT COUNT(*) 
FROM customer
WHERE last_name LIKE '%es'



-- when I put in store_id I got an error message saying that store_id does not exist.
-- Answer: There are 21 customer last names ending in es











--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 

SELECT amount, COUNT(*) AS rental_count
FROM payment
WHERE customer_id BETWEEN 380 AND 430
  AND rental_id IN (SELECT rental_id FROM rental WHERE customer_id BETWEEN 380 AND 430)
GROUP BY amount
HAVING COUNT(*) > 250;



-- Within the film table, how many rating categories are there? And what rating has the most  movies total?

SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC


--Answer: 5 rating categories. PG-13 has the highest movie count.





