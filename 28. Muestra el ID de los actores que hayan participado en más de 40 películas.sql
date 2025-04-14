--MUESTRA EL ID DE LOS ACTORES QUE HAYAN PARTICIPADO EN MAS DE 40 PELÍCULAS



SELECT  COUNT (f."title") AS "CONTEO PELÍCULAS",
	           fa. "actor_id" AS "ID ACTOR"
FROM "film" AS f
INNER JOIN "film_actor" AS fa
ON f."film_id"= fa. "film_id"
GROUP BY fa."actor_id" 
HAVING COUNT (f."title")  > 40