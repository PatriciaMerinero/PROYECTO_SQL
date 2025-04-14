--ENCUENTRA EL NOMBRE DE LOS ACTORES QUE TENGAN UN ACTOR ID ENTRE 30 Y 40


SELECT CONCAT (a."first_name", ' ', a."last_name") AS "ACTOR",
	   a."actor_id" AS "ID DE ACTOR"
FROM "actor" AS a
WHERE a."actor_id" BETWEEN 30 AND 40