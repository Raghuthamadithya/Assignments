--    Q3 Find out the total sales from Animation movies.

SELECT SUM(p.amount)
FROM film_list fl,inventory i,rental r,payment p
WHERE fl.category = 'Animation'
AND fl.FID = i.film_id
AND i.inventory_id = r.inventory_id
AND r.rental_id = p.rental_id;