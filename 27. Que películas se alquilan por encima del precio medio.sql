--QUE PELICULAS SE ALQUILAN POR ENCIMA DEL PRECIO MEDIO



--calculo precio medio = 4,2

SELECT ROUND (AVG("amount"), 2)AS "PRECIO MEDIO"
FROM "payment" AS p


--Uno tablas con JOIN y hago subconsulta en WHERE para filtrar resultados. Muestra los alquileres > 4,2


SELECT  f."title" AS "PELICULA",
		p."amount" AS "PAGADO ALQUILER"
FROM "film" AS f
INNER JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
INNER JOIN "rental"AS r
ON i."inventory_id"= r. "inventory_id"
INNER JOIN "payment" AS p
ON r."rental_id"= p. "rental_id"
WHERE p."amount"> (SELECT AVG("amount")
	    			FROM "payment")
ORDER BY p."amount" DESC