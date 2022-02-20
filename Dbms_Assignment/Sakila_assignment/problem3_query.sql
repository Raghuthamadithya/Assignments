SELECT Distinct customer.customer_id,customer.first_name, customer.last_name, category.name, country.country FROM customer 
INNER JOIN address ON customer.address_id=address.address_id 
INNER JOIN  city ON address.city_id=city.city_id 
INNER JOIN country ON city.country_id=country.country_id 
INNER JOIN rental ON rental.customer_id=customer.customer_id 
INNER JOIN inventory ON inventory.inventory_id=rental.inventory_id 
INNER JOIN film_category ON film_category.film_id=inventory.film_id 
INNER JOIN category ON category.category_id=film_category.category_id 
WHERE country.country='india' and category.name='sports'order by customer.customer_id ASC;
