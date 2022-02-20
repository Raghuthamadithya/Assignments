SELECT film.title ,count(customer.customer_id) AS customer_count FROM customer 
INNER JOIN rental ON customer.customer_id= rental.customer_id 
INNER JOIN inventory ON rental.inventory_id=inventory.inventory_id 
INNER JOIN film ON inventory.film_id=film.film_id 
INNER JOIN film_category ON film.film_id=film_category.film_id 
INNER JOIN category ON category.category_id=film_category.category_id 
WHERE category.name="horror" GROUP BY film.film_id ORDER BY customer_count DESC LIMIT 3;