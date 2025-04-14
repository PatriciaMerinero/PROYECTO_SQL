--ENCUENTRA EL TÍTULO DE TODAS LAS PELÍCULAS QUE SON DE LA MISMA CATEGORÍA QUE ANIMATION



SELECT f."title" AS "PELÍCULA",
	  c."name" AS "CATEGORÍA"
FROM "film"AS f
INNER JOIN "film_category" AS fc
ON f."film_id"= fc."film_id"
INNER JOIN "category"AS c
ON fc."category_id"= c."category_id"
WHERE c."name"ILIKE 'animation'





--Otra forma si se como esta escrito Animation

SELECT f."title" AS "PELÍCULA",
	  c."name" AS "CATEGORÍA"
FROM "film"AS f
INNER JOIN "film_category" AS fc
ON f."film_id"= fc."film_id"
INNER JOIN "category"AS c
ON fc."category_id"= c."category_id"
WHERE c."name"= 'Animation'