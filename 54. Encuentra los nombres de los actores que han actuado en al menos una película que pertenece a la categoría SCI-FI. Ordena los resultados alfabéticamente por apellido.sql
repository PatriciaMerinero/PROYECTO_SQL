--ENCUENTRA LOS NOMBRES DE LOS ACTORES QUE HAN ACTUADO EN AL MENOS UNA PELÍCULA QUE PERTENECE A LA CATEGORÍA "SCI-FI". ORDENA LOS RESULTADOS ALFABETICAMENTE POR APELLIDOS


SELECT CONCAT (a."first_name",' ',a."last_name")AS "ACTOR",
		c."name"AS "CATEGORIA"
FROM "actor"AS a
INNER JOIN "film_actor"AS fa 
ON a."actor_id"= fa. "actor_id"
INNER JOIN "film" AS f 
ON fa."film_id"= f."film_id"
INNER JOIN "film_category" AS fc 
ON f."film_id"=fc."film_id"
INNER JOIN "category" AS c
ON fc."category_id"= c."category_id"
WHERE c."name" ILIKE 'sci-fi'
ORDER BY a."last_name"
		 

		 
		 
		 