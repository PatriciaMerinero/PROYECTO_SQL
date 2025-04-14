--ENCUENTRA EL TITULO DE LAS PELÍCULAS QUE HAN SIDO ALQUILADAS POR EL CLIENTE CON EL NOMBRE TAMMY SANDERS Y QUE AUN NO SE HAN DEVUELTO. ORDENA LOS RESULTADOS ALFABETICAMENTE POR TITULO DE PELÍCULA

--no hay registros

SELECT f."title" AS "PELÍCULA",
		CONCAT (c."first_name", ' ', c."last_name") AS "CLIENTE"
FROM "film" AS f
INNER JOIN "inventory" AS i
ON f."film_id"=i."film_id"
INNER JOIN "rental" AS r
ON i."inventory_id"= r."inventory_id"
INNER JOIN "customer" AS c
ON c."customer_id"= r."customer_id"
WHERE CONCAT(c."first_name", ' ', c."last_name") = 'Tammy Sanders'
    AND r.return_date IS NULL
ORDER BY "title"

--peliculas que no se han devuelto de todos los clientes

SELECT f."title" AS "PELÍCULA",
		CONCAT (c."first_name", ' ', c."last_name") AS "CLIENTE"
FROM "film" AS f
INNER JOIN "inventory" AS i
ON f."film_id"=i."film_id"
INNER JOIN "rental" AS r
ON i."inventory_id"= r."inventory_id"
INNER JOIN "customer" AS c
ON c."customer_id"= r."customer_id"
WHERE  r.return_date IS NULL
ORDER BY "title"