--ENCUENTRA EL NUMERO DE PELÍCULAS POR CATEGORÍA ESTRENADAS EN 2006


SELECT c."name" AS "CATEGORIA",
	   f."release_year" AS "AÑO ESTRENO",
	   COUNT (f."film_id") AS "NUMERO DE PELICULAS"
FROM "category"AS c
INNER JOIN "film_category" AS fc
ON c."category_id"= fc."category_id"
INNER JOIN "film" as f
ON fc."film_id"= f."film_id"
INNER JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
INNER JOIN "rental" AS r
ON i."inventory_id"= r."inventory_id"
WHERE f."release_year"= 2006
GROUP BY f."release_year", c."name"
