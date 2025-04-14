--CALCULA LA DURACIÓN TOTAL DE LAS PELÍCULAS EN LA CATEGORÍA ACTION



SELECT c."name" AS "CATEGORIA",
		SUM(f."length") AS "DURACIÓN TOTAL PELÍCULAS"
FROM "film" AS f
INNER JOIN "film_category" AS fc
ON f."film_id"= fc."film_id"
INNER JOIN "category"AS c
ON c."category_id"= fc."category_id"
WHERE c."name"ILIKE 'action'
GROUP BY c."name"

--Convierto el resultado en horas

SELECT c."name" AS "CATEGORIA",
		ROUND(SUM(f."length") / 60.0, 2) AS "DURACIÓN TOTAL PELÍCULAS(HORAS)"
FROM "film" AS f
INNER JOIN "film_category" AS fc
ON f."film_id"= fc."film_id"
INNER JOIN "category"AS c
ON c."category_id"= fc."category_id"
WHERE c."name"ILIKE 'action'
GROUP BY c."name"


