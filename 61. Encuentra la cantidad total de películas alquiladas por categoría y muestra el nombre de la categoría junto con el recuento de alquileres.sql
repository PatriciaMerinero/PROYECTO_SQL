--ENCUENTRA LA CANTIDAD TOTAL DE PELÍCULAS ALQUILADAS POR CATEGORÍA Y MUESTRA EL NOMBRE DE LA CATEGORÍA JUNTO CON EL RECUENTO DE ALQUILERES


SELECT c."name" AS "CATEGORIA",
		COUNT (r."rental_id") AS "CONTEO ALQUILERES"
FROM "category"AS c
INNER JOIN "film_category" AS fc
ON c."category_id"= fc."category_id"
INNER JOIN "film" as f
ON fc."film_id"= f."film_id"
INNER JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
INNER JOIN "rental" AS r
ON i."inventory_id"= r."inventory_id"
GROUP BY c."name"
ORDER BY c."name"
