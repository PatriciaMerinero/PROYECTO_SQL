--OBTEN TODAS LAS PELÍCULAS Y MOSTRAR LOS ACTORES QUE HAN ACTUADO EN ELLAS INCLUSO SI ALGUNAS PELÍCULAS NO TIENEN ACTORES ASOCIADOS


--utilizo left join para que me muestre todo, hasta lo que no esté asociado 

SELECT f."title" AS "PELICULAS",
		CONCAT (a."first_name", ' ', a. "last_name")
FROM "film" AS f
LEFT JOIN "film_actor" AS fa
ON f."film_id"= fa. "film_id"
LEFT JOIN "actor" AS a
ON fa. "actor_id"= a. "actor_id"




