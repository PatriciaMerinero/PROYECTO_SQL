--OBTENER TODOS LOS ACTORES Y MOSTRAR LAS PELÍCULAS EN LAS QUE HAN ACTUADO, INCLUSO SI ALGUNOS ACTORES NO HAN ACTUADO EN ALGUNA PELÍCULA


SELECT CONCAT (a."first_name", ' ', a."last_name") AS "ACTOR",
		f."title" AS "PELICULA"
FROM "actor" AS a
LEFT JOIN "film_actor" AS fa
ON a."actor_id"= fa."actor_id"
LEFT JOIN "film" AS f
ON fa."film_id"= f."film_id"


