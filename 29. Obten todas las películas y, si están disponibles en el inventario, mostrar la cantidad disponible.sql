--OBTEN TODAS LAS PELÍCULAS Y, SI ESTÁN DISPONIBLES EN EL INVENTARIO, MOSTRAR LA CANTIDAD DISPONIBLE

SELECT f. "title"AS "PELÍCULA",
		f. "film_id" AS "FILM ID",
		COUNT (i. "inventory_id") AS "CANTIDAD DISPONIBLE"
FROM "film" AS f
LEFT JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
GROUP BY f."title",
		 f."film_id"		 
ORDER BY "CANTIDAD DISPONIBLE"
