--ENCUENTRA EL TITULO DE LAS PELÍCULAS QUE SON COMEDIAS Y TIENE UNA DURACIÓN >180 MIN EN LA TABLA FILM



SELECT f."title" AS "PELÍCULA",
		f."rating" AS "CLASIFICACIÓN",
		f."length" AS "DURACIÓN MINUTOS",
		f."description" AS "DESCRIPCIÓN",
		c."name" AS "CATEGORÍA"
FROM "film" AS f
INNER JOIN "film_category" AS fc
ON f."film_id"= fc."film_id"
RIGHT JOIN "category" AS c
ON c."category_id"= fc."category_id"
WHERE c."name"ILIKE '%COMEDY%' AND f."length">180


---otra manera

SELECT f."title" AS "PELÍCULA",
		f."rating" AS "CLASIFICACIÓN",
		f."length" AS "DURACIÓN MINUTOS",
		f."description" AS "DESCRIPCIÓN",
		c."name" AS "CATEGORÍA"
FROM "film" AS f
INNER JOIN "film_category" AS fc
ON f."film_id"= fc."film_id"
RIGHT JOIN "category" AS c
ON c."category_id"= fc."category_id"
WHERE c."name"= 'Comedy'AND f."length"> 180


