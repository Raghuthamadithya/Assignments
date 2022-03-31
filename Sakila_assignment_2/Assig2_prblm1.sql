--    Q1 Find out the number of documentaries with deleted scenes.

SELECT  COUNT(DISTINCT title)
FROM film
WHERE special_features LIKE '%Deleted Scenes%'
AND film.film_id IN (SELECT fc.film_id
					 FROM category c,film_category fc
					 WHERE c.name = 'Documentary'
					 AND c.category_id = fc.category_id);