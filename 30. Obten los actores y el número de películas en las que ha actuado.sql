--OBTEN LOS ACTORES Y EL NÚMERO DE PELÍCULAS EN LAS QUE HA ACTUADO


SELECT CONCAT(a."first_name", ' ', a."last_name") AS "ACTORES",
		COUNT (fa."film_id")AS "NÚMERO PELÍCULAS"
FROM "actor" AS a
INNER JOIN "film_actor" AS fa
ON a."actor_id"= fa."actor_id"
GROUP BY a."actor_id",
		 a."first_name",
		 a."last_name"

