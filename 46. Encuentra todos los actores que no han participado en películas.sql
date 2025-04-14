--ENCUENTRA TODOS LOS ACTORES QUE NO HAN PARTICIPADO EN PELÍCULAS


--Uno tablas actor y film_actor y filtro los actores que no están


SELECT CONCAT(a."first_name",' ', a."last_name") AS "ACTOR"
FROM "actor" AS a
LEFT JOIN "film_actor"AS fa 
ON a."actor_id"= fa."actor_id"
WHERE  fa."film_id"IS NULL 
