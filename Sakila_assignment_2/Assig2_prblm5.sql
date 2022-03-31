--    Q5 Find out the number of R rated movies rented by “SUSAN WILSON”.

SELECT fl.title
FROM  film_list fl,inventory i,rental r,customer_list cl
WHERE fl.rating = 'R' 
AND fl.FID = i.film_id
AND i.inventory_id = r.inventory_id
AND r.customer_id = cl.ID
AND cl.name = 'SUSAN WILSON';