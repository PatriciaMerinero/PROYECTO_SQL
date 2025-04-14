--ENCUENTRA LOS ACTORES QUE HA PARTICIPADO EN PELÍCULAS DE LA CATEGORÍA ACTION



--Uno tablas con inner join y con where pongo condición de lo que quiero

SELECT CONCAT(a."first_name",' ',a."last_name") AS "ACTOR",
	   ca."name" AS "CATEGORIA PELICULA"
FROM "actor" AS a
INNER JOIN "film_actor"AS fa
ON a."actor_id"= fa."actor_id"
INNER JOIN "film"AS f
ON fa."film_id"= f."film_id"
INNER JOIN "film_category"AS fc 
ON f."film_id"= fc."film_id"
INNER JOIN "category"AS ca 
ON fc."category_id"= ca."category_id"
WHERE ca."name"ILIKE 'action'

--con la misma consulta pero sin repetir actores

SELECT DISTINCT CONCAT(a."first_name",' ',a."last_name") AS "ACTOR",
	   ca."name" AS "CATEGORIA PELICULA"
FROM "actor" AS a
INNER JOIN "film_actor"AS fa
ON a."actor_id"= fa."actor_id"
INNER JOIN "film"AS f
ON fa."film_id"= f."film_id"
INNER JOIN "film_category"AS fc 
ON f."film_id"= fc."film_id"
INNER JOIN "category"AS ca 
ON fc."category_id"= ca."category_id"
WHERE ca."name"ILIKE 'action'

