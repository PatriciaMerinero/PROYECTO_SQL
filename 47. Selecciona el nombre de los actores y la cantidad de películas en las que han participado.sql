--SELECCIONA EL NOMBRE DE LOS ACTORES Y LA CANTIDAD DE PELICULAS EN LAS QUE HAN PARTICIPADO


--	Uno tablas, conteo películas y agrupo por las columnas originales

SELECT CONCAT(a."first_name",' ', a."last_name") AS "ACTOR",
		COUNT (fa."film_id") AS "CONTEO DE PELÍCULAS"
FROM "actor" AS a
INNER JOIN "film_actor" AS fa
ON a."actor_id"= fa."actor_id"
GROUP BY a."first_name",
		 a."last_name"
ORDER BY "CONTEO DE PELÍCULAS" 