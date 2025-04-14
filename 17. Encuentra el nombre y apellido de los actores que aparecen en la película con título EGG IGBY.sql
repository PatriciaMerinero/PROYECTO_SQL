--ENCUENTRA EL NOMBRE Y APELLIDO DE LOS ACTORES QUE APARECEN EN LA PELÍCULA CON TITULO "EGG IGBY"

SELECT CONCAT ( c."first_name",' ', c."last_name") AS "ACTOR",
		fi."title" AS "PELICULA"
FROM "actor" AS c
INNER JOIN "film_actor" AS f
ON c."actor_id" = f. "actor_id"
RIGHT JOIN "film" AS fi
ON fi."film_id"= f."film_id"
WHERE fi."title"= 'EGG IGBY'



-- con ILIKE (no sé como está escrito)

SELECT CONCAT ( c."first_name",' ', c."last_name") AS "ACTOR",
		fi."title" AS "PELICULA"
FROM "actor" AS c
INNER JOIN "film_actor" AS f
ON c."actor_id" = f. "actor_id"
RIGHT JOIN "film" AS fi
ON fi."film_id"= f."film_id"
WHERE fi."title"ILIKE 'egg igby'