--ENCUENTRA EL NOMBRE Y APELLIDO DE LOS ACTORES QUE HAN ACTUADO EN PELÍCULAS QUE SE ALQUILARON DESPUÉS DE QUE LA PELÍCULA SPARTACUS CHEAPER SE ALQUILARA POR PRIMERA VEZ. ORDENA LOS RESULTADOS ALFABÉTICAMENTE POR APELLIDO



--1º la fecha del primer alquiler de la película (subconsulta)

SELECT MIN(r."rental_date") AS "FECHA ALQUILER"
FROM "film"AS f 
INNER JOIN "inventory" AS i 
ON f."film_id"= i."film_id"
INNER JOIN "rental"AS r 
ON i. "inventory_id"= r. "inventory_id"
WHERE f."title" ILIKE 'SPARTACUS CHEAPER'


--2º uno tablas e incluyo subconsulta en where para filtrar resultados y ordeno por apellido

SELECT CONCAT (a."first_name", ' ', a."last_name") AS "ACTOR"
FROM "actor" AS a 
INNER JOIN "film_actor" AS fa
ON a."actor_id"= fa."actor_id"
INNER JOIN "film" AS f
ON fa."film_id"= f."film_id"
INNER JOIN "inventory"AS i
ON f."film_id"= i."film_id"
INNER JOIN "rental"AS r
ON i."inventory_id"= r. "inventory_id"
WHERE r."rental_date">(SELECT MIN(r."rental_date") AS "FECHA ALQUILER"
       					FROM "film"AS f
       					INNER JOIN "inventory" AS i
       					ON f."film_id"= i."film_id"
      					INNER JOIN "rental"AS r
       					ON i. "inventory_id"= r. "inventory_id"
      				    WHERE f."title" ILIKE 'SPARTACUS CHEAPER')
ORDER BY a."last_name"






