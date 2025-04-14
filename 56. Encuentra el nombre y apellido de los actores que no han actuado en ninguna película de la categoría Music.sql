--ENCUENTRA EL NOMBRE Y APELLIDO DE LOS ACTORES QUE NO HAN ACTUADO EN NINGUNA PELÍCULA DE LA CATEGORÍA MUSIC


SELECT CONCAT (a."first_name",' ', a."last_name") AS "ACTOR"
FROM "actor" AS a
WHERE a."actor_id" NOT IN (  SELECT fa."actor_id"
							FROM "film_actor" AS fa
							INNER JOIN "film" AS f 
							ON fa."film_id"= f. "film_id"
							INNER JOIN "film_category" AS fc 
							ON f."film_id"= fc. "film_id"
							INNER JOIN "category"AS c
							ON fc."category_id"=c."category_id" 
							WHERE c."name" ILIKE 'Music' )
ORDER BY a."last_name",
		 a."first_name"




--añado la columna de categoría

SELECT 
    CONCAT(a."first_name", ' ', a."last_name") AS "ACTOR",
    c."name" AS "CATEGORÍA"
FROM "actor" AS a
INNER JOIN "film_actor" AS fa 
ON a."actor_id" = fa."actor_id"
INNER JOIN "film" AS f
ON fa."film_id" = f."film_id"
INNER JOIN "film_category" AS fc 
ON f."film_id" = fc."film_id"
INNER JOIN "category" AS c 
ON fc."category_id" = c."category_id"
WHERE a."actor_id" NOT IN (SELECT fa."actor_id"
    					   FROM "film_actor" AS fa
    					   INNER JOIN "film" AS f 
    					   ON fa."film_id" = f."film_id"
                           INNER JOIN "film_category" AS fc 
    					   ON f."film_id" = fc."film_id"
                           INNER JOIN "category" AS c 
    					   ON fc."category_id" = c."category_id"
    					   WHERE c."name" ILIKE 'Music')
ORDER BY a."last_name",
		 a."first_name",
		 c."name"

--ordeno por categoría para comprobar que no hay ningún Music
		 
SELECT 
    CONCAT(a."first_name", ' ', a."last_name") AS "ACTOR",
    c."name" AS "CATEGORÍA"
FROM "actor" AS a
INNER JOIN "film_actor" AS fa 
ON a."actor_id" = fa."actor_id"
INNER JOIN "film" AS f
ON fa."film_id" = f."film_id"
INNER JOIN "film_category" AS fc 
ON f."film_id" = fc."film_id"
INNER JOIN "category" AS c 
ON fc."category_id" = c."category_id"
WHERE a."actor_id" NOT IN (SELECT fa."actor_id"
    					   FROM "film_actor" AS fa
    					   INNER JOIN "film" AS f 
    					   ON fa."film_id" = f."film_id"
                           INNER JOIN "film_category" AS fc 
    					   ON f."film_id" = fc."film_id"
                           INNER JOIN "category" AS c 
    					   ON fc."category_id" = c."category_id"
    					   WHERE c."name" ILIKE 'Music')
ORDER BY c."name"
